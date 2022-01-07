
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwsim_pib {int dummy; } ;
struct hwsim_phy {int hw; int pib; int list; } ;


 int hwsim_edge_unsubscribe_me (struct hwsim_phy*) ;
 int ieee802154_free_hw (int ) ;
 int ieee802154_unregister_hw (int ) ;
 int kfree_rcu (struct hwsim_pib*,int ) ;
 int list_del (int *) ;
 int rcu ;
 struct hwsim_pib* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void hwsim_del(struct hwsim_phy *phy)
{
 struct hwsim_pib *pib;

 hwsim_edge_unsubscribe_me(phy);

 list_del(&phy->list);

 rcu_read_lock();
 pib = rcu_dereference(phy->pib);
 rcu_read_unlock();

 kfree_rcu(pib, rcu);

 ieee802154_unregister_hw(phy->hw);
 ieee802154_free_hw(phy->hw);
}
