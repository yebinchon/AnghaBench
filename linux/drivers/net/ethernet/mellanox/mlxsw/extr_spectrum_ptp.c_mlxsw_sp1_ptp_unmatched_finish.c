
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ingress; int local_port; } ;
struct mlxsw_sp1_ptp_unmatched {TYPE_1__ key; scalar_t__ skb; scalar_t__ timestamp; } ;
struct mlxsw_sp {int dummy; } ;


 int kfree_rcu (struct mlxsw_sp1_ptp_unmatched*,int ) ;
 int mlxsw_sp1_packet_timestamp (struct mlxsw_sp*,TYPE_1__,scalar_t__,scalar_t__) ;
 int mlxsw_sp1_ptp_packet_finish (struct mlxsw_sp*,scalar_t__,int ,int ,int *) ;
 int rcu ;

__attribute__((used)) static void
mlxsw_sp1_ptp_unmatched_finish(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp1_ptp_unmatched *unmatched)
{
 if (unmatched->skb && unmatched->timestamp)
  mlxsw_sp1_packet_timestamp(mlxsw_sp, unmatched->key,
        unmatched->skb,
        unmatched->timestamp);
 else if (unmatched->skb)
  mlxsw_sp1_ptp_packet_finish(mlxsw_sp, unmatched->skb,
         unmatched->key.local_port,
         unmatched->key.ingress, ((void*)0));
 kfree_rcu(unmatched, rcu);
}
