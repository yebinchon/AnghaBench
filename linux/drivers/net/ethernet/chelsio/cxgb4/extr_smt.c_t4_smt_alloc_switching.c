
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct smt_entry {int refcnt; int lock; int src_mac; int pfvf; int state; } ;
struct smt_data {int lock; } ;
struct adapter {struct smt_data* smt; } ;


 int ETH_ALEN ;
 int SMT_STATE_SWITCHING ;
 struct smt_entry* find_or_alloc_smte (struct smt_data*,int *) ;
 int memcpy (int ,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock_bh (int *) ;
 int write_smt_entry (struct adapter*,struct smt_entry*) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static struct smt_entry *t4_smt_alloc_switching(struct adapter *adap, u16 pfvf,
      u8 *smac)
{
 struct smt_data *s = adap->smt;
 struct smt_entry *e;

 write_lock_bh(&s->lock);
 e = find_or_alloc_smte(s, smac);
 if (e) {
  spin_lock(&e->lock);
  if (!e->refcnt) {
   e->refcnt = 1;
   e->state = SMT_STATE_SWITCHING;
   e->pfvf = pfvf;
   memcpy(e->src_mac, smac, ETH_ALEN);
   write_smt_entry(adap, e);
  } else {
   ++e->refcnt;
  }
  spin_unlock(&e->lock);
 }
 write_unlock_bh(&s->lock);
 return e;
}
