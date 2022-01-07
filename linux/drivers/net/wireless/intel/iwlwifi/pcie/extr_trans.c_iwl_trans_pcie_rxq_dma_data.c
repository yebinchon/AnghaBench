
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans_rxq_dma_data {scalar_t__ fr_bd_wid; int ur_bd_cb; int urbd_stts_wrptr; int fr_bd_cb; } ;
struct iwl_trans_pcie {TYPE_1__* rxq; } ;
struct iwl_trans {int num_rx_queues; } ;
struct TYPE_2__ {int used_bd_dma; int rb_stts_dma; int bd_dma; } ;


 int EINVAL ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;

__attribute__((used)) static int iwl_trans_pcie_rxq_dma_data(struct iwl_trans *trans, int queue,
           struct iwl_trans_rxq_dma_data *data)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 if (queue >= trans->num_rx_queues || !trans_pcie->rxq)
  return -EINVAL;

 data->fr_bd_cb = trans_pcie->rxq[queue].bd_dma;
 data->urbd_stts_wrptr = trans_pcie->rxq[queue].rb_stts_dma;
 data->ur_bd_cb = trans_pcie->rxq[queue].used_bd_dma;
 data->fr_bd_wid = 0;

 return 0;
}
