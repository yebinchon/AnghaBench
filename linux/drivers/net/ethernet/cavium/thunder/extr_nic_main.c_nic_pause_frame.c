
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fc_tx; int fc_rx; int autoneg; int msg; } ;
union nic_mbx {TYPE_1__ pfc; } ;
struct pfc {int fc_tx; int fc_rx; int autoneg; scalar_t__ get; } ;
struct nicpf {int num_vf_en; int node; int * vf_lmac_map; } ;


 int NIC_GET_BGX_FROM_VF_LMAC_MAP (int ) ;
 int NIC_GET_LMAC_FROM_VF_LMAC_MAP (int ) ;
 int NIC_MBOX_MSG_PFC ;
 int bgx_lmac_get_pfc (int ,int,int,struct pfc*) ;
 int bgx_lmac_set_pfc (int ,int,int,struct pfc*) ;
 int nic_mbx_send_ack (struct nicpf*,int) ;
 int nic_send_msg_to_vf (struct nicpf*,int,union nic_mbx*) ;

__attribute__((used)) static void nic_pause_frame(struct nicpf *nic, int vf, struct pfc *cfg)
{
 int bgx, lmac;
 struct pfc pfc;
 union nic_mbx mbx = {};

 if (vf >= nic->num_vf_en)
  return;
 bgx = NIC_GET_BGX_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vf]);
 lmac = NIC_GET_LMAC_FROM_VF_LMAC_MAP(nic->vf_lmac_map[vf]);

 if (cfg->get) {
  bgx_lmac_get_pfc(nic->node, bgx, lmac, &pfc);
  mbx.pfc.msg = NIC_MBOX_MSG_PFC;
  mbx.pfc.autoneg = pfc.autoneg;
  mbx.pfc.fc_rx = pfc.fc_rx;
  mbx.pfc.fc_tx = pfc.fc_tx;
  nic_send_msg_to_vf(nic, vf, &mbx);
 } else {
  bgx_lmac_set_pfc(nic->node, bgx, lmac, cfg);
  nic_mbx_send_ack(nic, vf);
 }
}
