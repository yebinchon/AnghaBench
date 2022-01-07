
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicpf {int* vf_enabled; int num_vf_en; int node; int * vf_lmac_map; } ;


 int NIC_GET_BGX_FROM_VF_LMAC_MAP (int ) ;
 int NIC_GET_LMAC_FROM_VF_LMAC_MAP (int ) ;
 int bgx_lmac_rx_tx_enable (int ,int,int,int) ;

__attribute__((used)) static void nic_enable_vf(struct nicpf *nic, int vf, bool enable)
{
 int bgx, lmac;

 nic->vf_enabled[vf] = enable;

 if (vf >= nic->num_vf_en)
  return;

 bgx = NIC_GET_BGX_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vf]);
 lmac = NIC_GET_LMAC_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vf]);

 bgx_lmac_rx_tx_enable(nic->node, bgx, lmac, enable);
}
