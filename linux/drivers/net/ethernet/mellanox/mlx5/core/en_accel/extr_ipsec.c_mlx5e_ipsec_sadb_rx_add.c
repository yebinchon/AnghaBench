
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_ipsec_sa_entry {int handle; int hlist; struct mlx5e_ipsec* ipsec; } ;
struct mlx5e_ipsec {int sadb_rx_lock; int sadb_rx; int halloc; } ;


 int GFP_KERNEL ;
 int hash_add_rcu (int ,int *,int) ;
 int ida_simple_get (int *,int,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mlx5e_ipsec_sadb_rx_add(struct mlx5e_ipsec_sa_entry *sa_entry)
{
 struct mlx5e_ipsec *ipsec = sa_entry->ipsec;
 unsigned long flags;
 int ret;

 ret = ida_simple_get(&ipsec->halloc, 1, 0, GFP_KERNEL);
 if (ret < 0)
  return ret;

 spin_lock_irqsave(&ipsec->sadb_rx_lock, flags);
 sa_entry->handle = ret;
 hash_add_rcu(ipsec->sadb_rx, &sa_entry->hlist, sa_entry->handle);
 spin_unlock_irqrestore(&ipsec->sadb_rx_lock, flags);

 return 0;
}
