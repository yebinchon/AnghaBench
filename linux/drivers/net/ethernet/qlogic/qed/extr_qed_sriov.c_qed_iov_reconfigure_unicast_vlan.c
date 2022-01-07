
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* vlans; } ;
struct qed_vf_info {int relative_vf_id; int opaque_fid; TYPE_2__ shadow_config; int vport_id; } ;
struct qed_hwfn {int dummy; } ;
struct qed_filter_ucast {int is_rx_filter; int is_tx_filter; int vlan; int type; int opcode; int vport_to_add_to; } ;
typedef int filter ;
struct TYPE_3__ {int vid; int used; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int ,int ) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ) ;
 int QED_ETH_VF_NUM_VLAN_FILTERS ;
 int QED_FILTER_ADD ;
 int QED_FILTER_VLAN ;
 int QED_MSG_IOV ;
 int QED_SPQ_MODE_CB ;
 int memset (struct qed_filter_ucast*,int ,int) ;
 int qed_sp_eth_filter_ucast (struct qed_hwfn*,int ,struct qed_filter_ucast*,int ,int *) ;

__attribute__((used)) static int qed_iov_reconfigure_unicast_vlan(struct qed_hwfn *p_hwfn,
         struct qed_vf_info *p_vf)
{
 struct qed_filter_ucast filter;
 int rc = 0;
 int i;

 memset(&filter, 0, sizeof(filter));
 filter.is_rx_filter = 1;
 filter.is_tx_filter = 1;
 filter.vport_to_add_to = p_vf->vport_id;
 filter.opcode = QED_FILTER_ADD;


 for (i = 0; i < QED_ETH_VF_NUM_VLAN_FILTERS + 1; i++) {
  if (!p_vf->shadow_config.vlans[i].used)
   continue;

  filter.type = QED_FILTER_VLAN;
  filter.vlan = p_vf->shadow_config.vlans[i].vid;
  DP_VERBOSE(p_hwfn, QED_MSG_IOV,
      "Reconfiguring VLAN [0x%04x] for VF [%04x]\n",
      filter.vlan, p_vf->relative_vf_id);
  rc = qed_sp_eth_filter_ucast(p_hwfn, p_vf->opaque_fid,
          &filter, QED_SPQ_MODE_CB, ((void*)0));
  if (rc) {
   DP_NOTICE(p_hwfn,
      "Failed to configure VLAN [%04x] to VF [%04x]\n",
      filter.vlan, p_vf->relative_vf_id);
   break;
  }
 }

 return rc;
}
