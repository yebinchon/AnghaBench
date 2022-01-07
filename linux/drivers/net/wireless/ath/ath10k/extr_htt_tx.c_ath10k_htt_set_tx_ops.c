
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath10k_htt {int * tx_ops; struct ath10k* ar; } ;
struct TYPE_4__ {scalar_t__ target_64bit; } ;
struct TYPE_3__ {scalar_t__ dev_type; } ;
struct ath10k {TYPE_2__ hw_params; TYPE_1__ bus_param; } ;


 scalar_t__ ATH10K_DEV_TYPE_HL ;
 int htt_tx_ops_32 ;
 int htt_tx_ops_64 ;
 int htt_tx_ops_hl ;

void ath10k_htt_set_tx_ops(struct ath10k_htt *htt)
{
 struct ath10k *ar = htt->ar;

 if (ar->bus_param.dev_type == ATH10K_DEV_TYPE_HL)
  htt->tx_ops = &htt_tx_ops_hl;
 else if (ar->hw_params.target_64bit)
  htt->tx_ops = &htt_tx_ops_64;
 else
  htt->tx_ops = &htt_tx_ops_32;
}
