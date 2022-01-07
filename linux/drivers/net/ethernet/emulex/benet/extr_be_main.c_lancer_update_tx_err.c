
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct be_tx_obj {int dummy; } ;
struct TYPE_2__ {int tx_sge_err; int tx_dma_err; int tx_internal_parity_err; int tx_qinq_err; int tx_spoof_check_err; int tx_tso_err; } ;
 TYPE_1__* tx_stats (struct be_tx_obj*) ;

__attribute__((used)) static inline void lancer_update_tx_err(struct be_tx_obj *txo, u8 status)
{
 switch (status) {
 case 131:
  tx_stats(txo)->tx_tso_err++;
  break;
 case 133:
 case 132:
  tx_stats(txo)->tx_spoof_check_err++;
  break;
 case 129:
  tx_stats(txo)->tx_qinq_err++;
  break;
 case 130:
  tx_stats(txo)->tx_internal_parity_err++;
  break;
 case 134:
  tx_stats(txo)->tx_dma_err++;
  break;
 case 128:
  tx_stats(txo)->tx_sge_err++;
  break;
 }
}
