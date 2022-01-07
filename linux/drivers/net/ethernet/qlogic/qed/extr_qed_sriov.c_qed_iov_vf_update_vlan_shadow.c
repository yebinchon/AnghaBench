
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* vlans; } ;
struct TYPE_6__ {TYPE_1__* p_virt; } ;
struct qed_vf_info {int relative_vf_id; TYPE_4__ shadow_config; TYPE_2__ bulletin; } ;
struct qed_hwfn {int dummy; } ;
struct qed_filter_ucast {scalar_t__ opcode; scalar_t__ vlan; } ;
struct TYPE_7__ {int used; scalar_t__ vid; } ;
struct TYPE_5__ {int valid_bitmap; } ;


 int BIT (int ) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,...) ;
 int EINVAL ;
 int QED_ETH_VF_NUM_VLAN_FILTERS ;
 scalar_t__ QED_FILTER_ADD ;
 scalar_t__ QED_FILTER_FLUSH ;
 scalar_t__ QED_FILTER_REMOVE ;
 scalar_t__ QED_FILTER_REPLACE ;
 int QED_MSG_IOV ;
 int VLAN_ADDR_FORCED ;

__attribute__((used)) static int qed_iov_vf_update_vlan_shadow(struct qed_hwfn *p_hwfn,
      struct qed_vf_info *p_vf,
      struct qed_filter_ucast *p_params)
{
 int i;


 if (p_params->opcode == QED_FILTER_REMOVE) {
  for (i = 0; i < QED_ETH_VF_NUM_VLAN_FILTERS + 1; i++)
   if (p_vf->shadow_config.vlans[i].used &&
       p_vf->shadow_config.vlans[i].vid ==
       p_params->vlan) {
    p_vf->shadow_config.vlans[i].used = 0;
    break;
   }
  if (i == QED_ETH_VF_NUM_VLAN_FILTERS + 1) {
   DP_VERBOSE(p_hwfn,
       QED_MSG_IOV,
       "VF [%d] - Tries to remove a non-existing vlan\n",
       p_vf->relative_vf_id);
   return -EINVAL;
  }
 } else if (p_params->opcode == QED_FILTER_REPLACE ||
     p_params->opcode == QED_FILTER_FLUSH) {
  for (i = 0; i < QED_ETH_VF_NUM_VLAN_FILTERS + 1; i++)
   p_vf->shadow_config.vlans[i].used = 0;
 }




 if (p_vf->bulletin.p_virt->valid_bitmap & BIT(VLAN_ADDR_FORCED))
  return 0;

 if (p_params->opcode == QED_FILTER_ADD ||
     p_params->opcode == QED_FILTER_REPLACE) {
  for (i = 0; i < QED_ETH_VF_NUM_VLAN_FILTERS + 1; i++) {
   if (p_vf->shadow_config.vlans[i].used)
    continue;

   p_vf->shadow_config.vlans[i].used = 1;
   p_vf->shadow_config.vlans[i].vid = p_params->vlan;
   break;
  }

  if (i == QED_ETH_VF_NUM_VLAN_FILTERS + 1) {
   DP_VERBOSE(p_hwfn,
       QED_MSG_IOV,
       "VF [%d] - Tries to configure more than %d vlan filters\n",
       p_vf->relative_vf_id,
       QED_ETH_VF_NUM_VLAN_FILTERS + 1);
   return -EINVAL;
  }
 }

 return 0;
}
