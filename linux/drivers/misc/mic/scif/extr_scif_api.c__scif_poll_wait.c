
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct scif_endpt {int lock; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 int poll_wait (struct file*,int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void _scif_poll_wait(struct file *f, wait_queue_head_t *wq,
       poll_table *p, struct scif_endpt *ep)
{







 spin_unlock(&ep->lock);
 poll_wait(f, wq, p);
 spin_lock(&ep->lock);
}
