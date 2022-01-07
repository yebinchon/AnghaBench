
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp1_ptp_unmatched {scalar_t__ skb; } ;


 int dev_kfree_skb_any (scalar_t__) ;
 int kfree_rcu (struct mlxsw_sp1_ptp_unmatched*,int ) ;
 int rcu ;

__attribute__((used)) static void mlxsw_sp1_ptp_unmatched_free_fn(void *ptr, void *arg)
{
 struct mlxsw_sp1_ptp_unmatched *unmatched = ptr;




 if (unmatched->skb)
  dev_kfree_skb_any(unmatched->skb);
 kfree_rcu(unmatched, rcu);
}
