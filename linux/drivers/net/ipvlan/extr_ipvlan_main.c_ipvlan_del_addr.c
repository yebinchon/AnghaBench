
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipvl_dev {int addrs_lock; } ;
struct ipvl_addr {int anode; } ;


 struct ipvl_addr* ipvlan_find_addr (struct ipvl_dev*,void*,int) ;
 int ipvlan_ht_addr_del (struct ipvl_addr*) ;
 int kfree_rcu (struct ipvl_addr*,int ) ;
 int list_del_rcu (int *) ;
 int rcu ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ipvlan_del_addr(struct ipvl_dev *ipvlan, void *iaddr, bool is_v6)
{
 struct ipvl_addr *addr;

 spin_lock_bh(&ipvlan->addrs_lock);
 addr = ipvlan_find_addr(ipvlan, iaddr, is_v6);
 if (!addr) {
  spin_unlock_bh(&ipvlan->addrs_lock);
  return;
 }

 ipvlan_ht_addr_del(addr);
 list_del_rcu(&addr->anode);
 spin_unlock_bh(&ipvlan->addrs_lock);
 kfree_rcu(addr, rcu);
}
