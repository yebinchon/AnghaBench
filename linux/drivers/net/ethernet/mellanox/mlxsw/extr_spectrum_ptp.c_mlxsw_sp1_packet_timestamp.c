
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct mlxsw_sp1_ptp_key {int ingress; int local_port; } ;
struct mlxsw_sp {TYPE_1__* clock; } ;
struct TYPE_2__ {int lock; int tc; } ;


 int mlxsw_sp1_ptp_packet_finish (struct mlxsw_sp*,struct sk_buff*,int ,int ,struct skb_shared_hwtstamps*) ;
 int ns_to_ktime (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timecounter_cyc2time (int *,int ) ;

__attribute__((used)) static void mlxsw_sp1_packet_timestamp(struct mlxsw_sp *mlxsw_sp,
           struct mlxsw_sp1_ptp_key key,
           struct sk_buff *skb,
           u64 timestamp)
{
 struct skb_shared_hwtstamps hwtstamps;
 u64 nsec;

 spin_lock_bh(&mlxsw_sp->clock->lock);
 nsec = timecounter_cyc2time(&mlxsw_sp->clock->tc, timestamp);
 spin_unlock_bh(&mlxsw_sp->clock->lock);

 hwtstamps.hwtstamp = ns_to_ktime(nsec);
 mlxsw_sp1_ptp_packet_finish(mlxsw_sp, skb,
        key.local_port, key.ingress, &hwtstamps);
}
