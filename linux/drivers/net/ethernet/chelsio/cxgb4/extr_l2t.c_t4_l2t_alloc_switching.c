
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2t_entry {int lock; int refcnt; int dmac; int lport; int vlan; int state; } ;
struct l2t_data {int lock; } ;
struct adapter {struct l2t_data* l2t; } ;


 int L2T_STATE_SWITCHING ;
 int _t4_l2e_free (struct l2t_entry*) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int ether_addr_copy (int ,int *) ;
 struct l2t_entry* find_or_alloc_l2e (struct l2t_data*,int ,int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_l2e (struct adapter*,struct l2t_entry*,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

struct l2t_entry *t4_l2t_alloc_switching(struct adapter *adap, u16 vlan,
      u8 port, u8 *eth_addr)
{
 struct l2t_data *d = adap->l2t;
 struct l2t_entry *e;
 int ret;

 write_lock_bh(&d->lock);
 e = find_or_alloc_l2e(d, vlan, port, eth_addr);
 if (e) {
  spin_lock(&e->lock);
  if (!atomic_read(&e->refcnt)) {
   e->state = L2T_STATE_SWITCHING;
   e->vlan = vlan;
   e->lport = port;
   ether_addr_copy(e->dmac, eth_addr);
   atomic_set(&e->refcnt, 1);
   ret = write_l2e(adap, e, 0);
   if (ret < 0) {
    _t4_l2e_free(e);
    spin_unlock(&e->lock);
    write_unlock_bh(&d->lock);
    return ((void*)0);
   }
  } else {
   atomic_inc(&e->refcnt);
  }

  spin_unlock(&e->lock);
 }
 write_unlock_bh(&d->lock);
 return e;
}
