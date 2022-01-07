
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_ipsec_sa_entry {int hlist; struct mlx5e_ipsec* ipsec; } ;
struct mlx5e_ipsec {int sadb_rx_lock; } ;


 int hash_del_rcu (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mlx5e_ipsec_sadb_rx_del(struct mlx5e_ipsec_sa_entry *sa_entry)
{
 struct mlx5e_ipsec *ipsec = sa_entry->ipsec;
 unsigned long flags;

 spin_lock_irqsave(&ipsec->sadb_rx_lock, flags);
 hash_del_rcu(&sa_entry->hlist);
 spin_unlock_irqrestore(&ipsec->sadb_rx_lock, flags);
}
