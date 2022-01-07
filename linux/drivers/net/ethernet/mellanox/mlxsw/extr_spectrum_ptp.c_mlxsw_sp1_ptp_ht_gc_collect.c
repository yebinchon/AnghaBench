
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlxsw_sp_ptp_state {TYPE_4__* mlxsw_sp; int unmatched_lock; int unmatched_ht; } ;
struct mlxsw_sp_ptp_port_dir_stats {int timestamps; int packets; } ;
struct TYPE_6__ {struct mlxsw_sp_ptp_port_dir_stats tx_gcd; struct mlxsw_sp_ptp_port_dir_stats rx_gcd; } ;
struct TYPE_7__ {TYPE_2__ stats; } ;
struct mlxsw_sp_port {TYPE_3__ ptp; } ;
struct TYPE_5__ {size_t local_port; scalar_t__ ingress; } ;
struct mlxsw_sp1_ptp_unmatched {scalar_t__ skb; TYPE_1__ key; int ht_node; } ;
struct TYPE_8__ {struct mlxsw_sp_port** ports; } ;


 int local_bh_disable () ;
 int local_bh_enable () ;
 int mlxsw_sp1_ptp_unmatched_finish (TYPE_4__*,struct mlxsw_sp1_ptp_unmatched*) ;
 int mlxsw_sp1_ptp_unmatched_ht_params ;
 int rhltable_remove (int *,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
mlxsw_sp1_ptp_ht_gc_collect(struct mlxsw_sp_ptp_state *ptp_state,
       struct mlxsw_sp1_ptp_unmatched *unmatched)
{
 struct mlxsw_sp_ptp_port_dir_stats *stats;
 struct mlxsw_sp_port *mlxsw_sp_port;
 int err;
 local_bh_disable();

 spin_lock(&ptp_state->unmatched_lock);
 err = rhltable_remove(&ptp_state->unmatched_ht, &unmatched->ht_node,
         mlxsw_sp1_ptp_unmatched_ht_params);
 spin_unlock(&ptp_state->unmatched_lock);

 if (err)

  goto out;

 mlxsw_sp_port = ptp_state->mlxsw_sp->ports[unmatched->key.local_port];
 if (mlxsw_sp_port) {
  stats = unmatched->key.ingress ?
   &mlxsw_sp_port->ptp.stats.rx_gcd :
   &mlxsw_sp_port->ptp.stats.tx_gcd;
  if (unmatched->skb)
   stats->packets++;
  else
   stats->timestamps++;
 }







 mlxsw_sp1_ptp_unmatched_finish(ptp_state->mlxsw_sp, unmatched);

out:
 local_bh_enable();
}
