
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_file {scalar_t__ kind; scalar_t__ dead; int rq; int rwait; } ;
struct ppp {scalar_t__ n_channels; int flags; } ;
struct file {struct ppp_file* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 scalar_t__ INTERFACE ;
 struct ppp* PF_TO_PPP (struct ppp_file*) ;
 int SC_LOOP_TRAFFIC ;
 int poll_wait (struct file*,int *,int *) ;
 int ppp_recv_lock (struct ppp*) ;
 int ppp_recv_unlock (struct ppp*) ;
 scalar_t__ skb_peek (int *) ;

__attribute__((used)) static __poll_t ppp_poll(struct file *file, poll_table *wait)
{
 struct ppp_file *pf = file->private_data;
 __poll_t mask;

 if (!pf)
  return 0;
 poll_wait(file, &pf->rwait, wait);
 mask = EPOLLOUT | EPOLLWRNORM;
 if (skb_peek(&pf->rq))
  mask |= EPOLLIN | EPOLLRDNORM;
 if (pf->dead)
  mask |= EPOLLHUP;
 else if (pf->kind == INTERFACE) {

  struct ppp *ppp = PF_TO_PPP(pf);

  ppp_recv_lock(ppp);
  if (ppp->n_channels == 0 &&
      (ppp->flags & SC_LOOP_TRAFFIC) == 0)
   mask |= EPOLLIN | EPOLLRDNORM;
  ppp_recv_unlock(ppp);
 }

 return mask;
}
