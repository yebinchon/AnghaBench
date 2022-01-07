
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int * macs; } ;
struct TYPE_7__ {scalar_t__ is_trusted_configured; } ;
struct TYPE_6__ {TYPE_1__* p_virt; } ;
struct qed_vf_info {TYPE_4__ shadow_config; TYPE_3__ p_vf_info; TYPE_2__ bulletin; } ;
struct qed_hwfn {int dummy; } ;
struct qed_filter_ucast {scalar_t__ opcode; int mac; } ;
struct TYPE_5__ {int valid_bitmap; } ;


 int BIT (int ) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,...) ;
 int EINVAL ;
 int MAC_ADDR_FORCED ;
 int QED_ETH_VF_NUM_MAC_FILTERS ;
 scalar_t__ QED_FILTER_ADD ;
 scalar_t__ QED_FILTER_FLUSH ;
 scalar_t__ QED_FILTER_REMOVE ;
 scalar_t__ QED_FILTER_REPLACE ;
 int QED_MSG_IOV ;
 int eth_zero_addr (int ) ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 scalar_t__ is_zero_ether_addr (int ) ;

__attribute__((used)) static int qed_iov_vf_update_mac_shadow(struct qed_hwfn *p_hwfn,
     struct qed_vf_info *p_vf,
     struct qed_filter_ucast *p_params)
{
 int i;


 if (p_vf->bulletin.p_virt->valid_bitmap & BIT(MAC_ADDR_FORCED))
  return 0;


 if (p_vf->p_vf_info.is_trusted_configured)
  return 0;


 if (p_params->opcode == QED_FILTER_REMOVE) {
  for (i = 0; i < QED_ETH_VF_NUM_MAC_FILTERS; i++) {
   if (ether_addr_equal(p_vf->shadow_config.macs[i],
          p_params->mac)) {
    eth_zero_addr(p_vf->shadow_config.macs[i]);
    break;
   }
  }

  if (i == QED_ETH_VF_NUM_MAC_FILTERS) {
   DP_VERBOSE(p_hwfn, QED_MSG_IOV,
       "MAC isn't configured\n");
   return -EINVAL;
  }
 } else if (p_params->opcode == QED_FILTER_REPLACE ||
     p_params->opcode == QED_FILTER_FLUSH) {
  for (i = 0; i < QED_ETH_VF_NUM_MAC_FILTERS; i++)
   eth_zero_addr(p_vf->shadow_config.macs[i]);
 }


 if (p_params->opcode != QED_FILTER_ADD &&
     p_params->opcode != QED_FILTER_REPLACE)
  return 0;

 for (i = 0; i < QED_ETH_VF_NUM_MAC_FILTERS; i++) {
  if (is_zero_ether_addr(p_vf->shadow_config.macs[i])) {
   ether_addr_copy(p_vf->shadow_config.macs[i],
     p_params->mac);
   DP_VERBOSE(p_hwfn, QED_MSG_IOV,
       "Added MAC at %d entry in shadow\n", i);
   break;
  }
 }

 if (i == QED_ETH_VF_NUM_MAC_FILTERS) {
  DP_VERBOSE(p_hwfn, QED_MSG_IOV, "No available place for MAC\n");
  return -EINVAL;
 }

 return 0;
}
