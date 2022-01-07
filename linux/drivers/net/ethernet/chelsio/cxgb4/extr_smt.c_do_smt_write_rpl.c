
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smt_entry {int lock; int state; } ;
struct smt_data {struct smt_entry* smtab; } ;
struct cpl_smt_write_rpl {scalar_t__ status; } ;
struct adapter {int pdev_dev; struct smt_data* smt; } ;


 scalar_t__ CPL_ERR_NONE ;
 int GET_TID (struct cpl_smt_write_rpl const*) ;
 int SMT_STATE_ERROR ;
 unsigned int TID_TID_G (int ) ;
 int dev_err (int ,char*,scalar_t__,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

void do_smt_write_rpl(struct adapter *adap, const struct cpl_smt_write_rpl *rpl)
{
 unsigned int smtidx = TID_TID_G(GET_TID(rpl));
 struct smt_data *s = adap->smt;

 if (unlikely(rpl->status != CPL_ERR_NONE)) {
  struct smt_entry *e = &s->smtab[smtidx];

  dev_err(adap->pdev_dev,
   "Unexpected SMT_WRITE_RPL status %u for entry %u\n",
   rpl->status, smtidx);
  spin_lock(&e->lock);
  e->state = SMT_STATE_ERROR;
  spin_unlock(&e->lock);
  return;
 }
}
