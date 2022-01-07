
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2t_entry {scalar_t__ state; int lock; TYPE_1__* neigh; } ;
struct l2t_data {unsigned int l2t_start; struct l2t_entry* l2tab; } ;
struct cpl_l2t_write_rpl {scalar_t__ status; } ;
struct adapter {int pdev_dev; struct l2t_data* l2t; } ;
struct TYPE_2__ {int nud_state; } ;


 scalar_t__ CPL_ERR_NONE ;
 unsigned int GET_TID (struct cpl_l2t_write_rpl const*) ;
 unsigned int L2T_SIZE ;
 scalar_t__ L2T_STATE_STALE ;
 scalar_t__ L2T_STATE_SWITCHING ;
 scalar_t__ L2T_STATE_VALID ;
 int NUD_STALE ;
 unsigned int SYNC_WR_F ;
 int dev_err (int ,char*,scalar_t__,unsigned int) ;
 int send_pending (struct adapter*,struct l2t_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

void do_l2t_write_rpl(struct adapter *adap, const struct cpl_l2t_write_rpl *rpl)
{
 struct l2t_data *d = adap->l2t;
 unsigned int tid = GET_TID(rpl);
 unsigned int l2t_idx = tid % L2T_SIZE;

 if (unlikely(rpl->status != CPL_ERR_NONE)) {
  dev_err(adap->pdev_dev,
   "Unexpected L2T_WRITE_RPL status %u for entry %u\n",
   rpl->status, l2t_idx);
  return;
 }

 if (tid & SYNC_WR_F) {
  struct l2t_entry *e = &d->l2tab[l2t_idx - d->l2t_start];

  spin_lock(&e->lock);
  if (e->state != L2T_STATE_SWITCHING) {
   send_pending(adap, e);
   e->state = (e->neigh->nud_state & NUD_STALE) ?
     L2T_STATE_STALE : L2T_STATE_VALID;
  }
  spin_unlock(&e->lock);
 }
}
