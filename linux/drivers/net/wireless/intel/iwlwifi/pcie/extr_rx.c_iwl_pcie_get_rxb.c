
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct iwl_trans_pcie {struct iwl_rx_mem_buffer** global_table; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct iwl_rxq {int * bd_32; TYPE_2__* cd; struct iwl_rx_mem_buffer** queue; } ;
struct iwl_rx_mem_buffer {int invalid; scalar_t__ vid; } ;
struct iwl_rx_completion_desc {int dummy; } ;
struct TYPE_4__ {int rbid; } ;
struct TYPE_3__ {scalar_t__ device_family; int mq_rx_supported; } ;


 int ARRAY_SIZE (struct iwl_rx_mem_buffer**) ;
 int BUILD_BUG_ON (int) ;
 int IWL_DEBUG_RX (struct iwl_trans*,char*,int ) ;
 scalar_t__ IWL_DEVICE_FAMILY_22560 ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int WARN (int,char*,int ) ;
 int iwl_force_nmi (struct iwl_trans*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static struct iwl_rx_mem_buffer *iwl_pcie_get_rxb(struct iwl_trans *trans,
        struct iwl_rxq *rxq, int i)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_rx_mem_buffer *rxb;
 u16 vid;

 BUILD_BUG_ON(sizeof(struct iwl_rx_completion_desc) != 32);

 if (!trans->trans_cfg->mq_rx_supported) {
  rxb = rxq->queue[i];
  rxq->queue[i] = ((void*)0);
  return rxb;
 }


 if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22560)
  vid = le16_to_cpu(rxq->cd[i].rbid) & 0x0FFF;
 else
  vid = le32_to_cpu(rxq->bd_32[i]) & 0x0FFF;

 if (!vid || vid > ARRAY_SIZE(trans_pcie->global_table))
  goto out_err;

 rxb = trans_pcie->global_table[vid - 1];
 if (rxb->invalid)
  goto out_err;

 IWL_DEBUG_RX(trans, "Got virtual RB ID %u\n", (u32)rxb->vid);

 rxb->invalid = 1;

 return rxb;

out_err:
 WARN(1, "Invalid rxb from HW %u\n", (u32)vid);
 iwl_force_nmi(trans);
 return ((void*)0);
}
