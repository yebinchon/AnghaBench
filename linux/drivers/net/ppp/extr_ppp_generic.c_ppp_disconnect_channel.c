
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcnt; int rwait; } ;
struct ppp {scalar_t__ n_channels; TYPE_1__ file; } ;
struct channel {int clist; int upl; struct ppp* ppp; } ;


 int EINVAL ;
 int list_del (int *) ;
 int ppp_destroy_interface (struct ppp*) ;
 int ppp_lock (struct ppp*) ;
 int ppp_unlock (struct ppp*) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int wake_up_interruptible (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int
ppp_disconnect_channel(struct channel *pch)
{
 struct ppp *ppp;
 int err = -EINVAL;

 write_lock_bh(&pch->upl);
 ppp = pch->ppp;
 pch->ppp = ((void*)0);
 write_unlock_bh(&pch->upl);
 if (ppp) {

  ppp_lock(ppp);
  list_del(&pch->clist);
  if (--ppp->n_channels == 0)
   wake_up_interruptible(&ppp->file.rwait);
  ppp_unlock(ppp);
  if (refcount_dec_and_test(&ppp->file.refcnt))
   ppp_destroy_interface(ppp);
  err = 0;
 }
 return err;
}
