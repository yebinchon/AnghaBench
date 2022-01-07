
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwsim_edge_info {int info; } ;
struct hwsim_edge {int info; } ;


 int kfree_rcu (struct hwsim_edge_info*,int ) ;
 int rcu ;
 struct hwsim_edge_info* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void hwsim_free_edge(struct hwsim_edge *e)
{
 struct hwsim_edge_info *einfo;

 rcu_read_lock();
 einfo = rcu_dereference(e->info);
 rcu_read_unlock();

 kfree_rcu(einfo, rcu);
 kfree_rcu(e, rcu);
}
