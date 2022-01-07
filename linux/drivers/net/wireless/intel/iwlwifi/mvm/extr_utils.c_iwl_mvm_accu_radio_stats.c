
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ on_time_scan; scalar_t__ on_time_rf; scalar_t__ tx_time; scalar_t__ rx_time; } ;
struct TYPE_3__ {int on_time_scan; int on_time_rf; int tx_time; int rx_time; } ;
struct iwl_mvm {TYPE_2__ radio_stats; TYPE_1__ accu_radio_stats; } ;



void iwl_mvm_accu_radio_stats(struct iwl_mvm *mvm)
{
 mvm->accu_radio_stats.rx_time += mvm->radio_stats.rx_time;
 mvm->accu_radio_stats.tx_time += mvm->radio_stats.tx_time;
 mvm->accu_radio_stats.on_time_rf += mvm->radio_stats.on_time_rf;
 mvm->accu_radio_stats.on_time_scan += mvm->radio_stats.on_time_scan;
}
