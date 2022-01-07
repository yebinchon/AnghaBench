
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct ice_hw_common_caps {int sr_iov_1_1; int dcb; scalar_t__ max_mtu; scalar_t__ msix_vector_first_id; scalar_t__ num_msix_vectors; scalar_t__ txq_first_id; scalar_t__ num_txq; scalar_t__ rxq_first_id; scalar_t__ num_rxq; scalar_t__ rss_table_entry_width; scalar_t__ rss_table_size; scalar_t__ maxtc; scalar_t__ active_tc_bitmap; scalar_t__ valid_functions; } ;
struct ice_hw_func_caps {int guar_num_vsi; scalar_t__ vf_base_id; scalar_t__ num_allocd_vfs; struct ice_hw_common_caps common_cap; } ;
struct ice_hw_dev_caps {scalar_t__ num_vsi_allocd_to_host; scalar_t__ num_vfs_exposed; struct ice_hw_common_caps common_cap; } ;
struct ice_hw {struct ice_hw_func_caps func_caps; struct ice_hw_dev_caps dev_caps; } ;
struct ice_aqc_list_caps_elem {int cap; int number; int phys_id; int logical_id; } ;
typedef enum ice_adminq_opc { ____Placeholder_ice_adminq_opc } ice_adminq_opc ;
 int ICE_DBG_INIT ;
 int ICE_MAX_VSI ;
 int ice_aqc_opc_list_dev_caps ;
 int ice_aqc_opc_list_func_caps ;
 int ice_debug (struct ice_hw*,int ,char*,...) ;
 int ice_get_num_per_func (struct ice_hw*,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void
ice_parse_caps(struct ice_hw *hw, void *buf, u32 cap_count,
        enum ice_adminq_opc opc)
{
 struct ice_aqc_list_caps_elem *cap_resp;
 struct ice_hw_func_caps *func_p = ((void*)0);
 struct ice_hw_dev_caps *dev_p = ((void*)0);
 struct ice_hw_common_caps *caps;
 char const *prefix;
 u32 i;

 if (!buf)
  return;

 cap_resp = (struct ice_aqc_list_caps_elem *)buf;

 if (opc == ice_aqc_opc_list_dev_caps) {
  dev_p = &hw->dev_caps;
  caps = &dev_p->common_cap;
  prefix = "dev cap";
 } else if (opc == ice_aqc_opc_list_func_caps) {
  func_p = &hw->func_caps;
  caps = &func_p->common_cap;
  prefix = "func cap";
 } else {
  ice_debug(hw, ICE_DBG_INIT, "wrong opcode\n");
  return;
 }

 for (i = 0; caps && i < cap_count; i++, cap_resp++) {
  u32 logical_id = le32_to_cpu(cap_resp->logical_id);
  u32 phys_id = le32_to_cpu(cap_resp->phys_id);
  u32 number = le32_to_cpu(cap_resp->number);
  u16 cap = le16_to_cpu(cap_resp->cap);

  switch (cap) {
  case 130:
   caps->valid_functions = number;
   ice_debug(hw, ICE_DBG_INIT,
      "%s: valid_functions (bitmap) = %d\n", prefix,
      caps->valid_functions);
   break;
  case 132:
   caps->sr_iov_1_1 = (number == 1);
   ice_debug(hw, ICE_DBG_INIT,
      "%s: sr_iov_1_1 = %d\n", prefix,
      caps->sr_iov_1_1);
   break;
  case 129:
   if (dev_p) {
    dev_p->num_vfs_exposed = number;
    ice_debug(hw, ICE_DBG_INIT,
       "%s: num_vfs_exposed = %d\n", prefix,
       dev_p->num_vfs_exposed);
   } else if (func_p) {
    func_p->num_allocd_vfs = number;
    func_p->vf_base_id = logical_id;
    ice_debug(hw, ICE_DBG_INIT,
       "%s: num_allocd_vfs = %d\n", prefix,
       func_p->num_allocd_vfs);
    ice_debug(hw, ICE_DBG_INIT,
       "%s: vf_base_id = %d\n", prefix,
       func_p->vf_base_id);
   }
   break;
  case 128:
   if (dev_p) {
    dev_p->num_vsi_allocd_to_host = number;
    ice_debug(hw, ICE_DBG_INIT,
       "%s: num_vsi_allocd_to_host = %d\n",
       prefix,
       dev_p->num_vsi_allocd_to_host);
   } else if (func_p) {
    func_p->guar_num_vsi =
     ice_get_num_per_func(hw, ICE_MAX_VSI);
    ice_debug(hw, ICE_DBG_INIT,
       "%s: guar_num_vsi (fw) = %d\n",
       prefix, number);
    ice_debug(hw, ICE_DBG_INIT,
       "%s: guar_num_vsi = %d\n",
       prefix, func_p->guar_num_vsi);
   }
   break;
  case 137:
   caps->dcb = (number == 1);
   caps->active_tc_bitmap = logical_id;
   caps->maxtc = phys_id;
   ice_debug(hw, ICE_DBG_INIT,
      "%s: dcb = %d\n", prefix, caps->dcb);
   ice_debug(hw, ICE_DBG_INIT,
      "%s: active_tc_bitmap = %d\n", prefix,
      caps->active_tc_bitmap);
   ice_debug(hw, ICE_DBG_INIT,
      "%s: maxtc = %d\n", prefix, caps->maxtc);
   break;
  case 134:
   caps->rss_table_size = number;
   caps->rss_table_entry_width = logical_id;
   ice_debug(hw, ICE_DBG_INIT,
      "%s: rss_table_size = %d\n", prefix,
      caps->rss_table_size);
   ice_debug(hw, ICE_DBG_INIT,
      "%s: rss_table_entry_width = %d\n", prefix,
      caps->rss_table_entry_width);
   break;
  case 133:
   caps->num_rxq = number;
   caps->rxq_first_id = phys_id;
   ice_debug(hw, ICE_DBG_INIT,
      "%s: num_rxq = %d\n", prefix,
      caps->num_rxq);
   ice_debug(hw, ICE_DBG_INIT,
      "%s: rxq_first_id = %d\n", prefix,
      caps->rxq_first_id);
   break;
  case 131:
   caps->num_txq = number;
   caps->txq_first_id = phys_id;
   ice_debug(hw, ICE_DBG_INIT,
      "%s: num_txq = %d\n", prefix,
      caps->num_txq);
   ice_debug(hw, ICE_DBG_INIT,
      "%s: txq_first_id = %d\n", prefix,
      caps->txq_first_id);
   break;
  case 135:
   caps->num_msix_vectors = number;
   caps->msix_vector_first_id = phys_id;
   ice_debug(hw, ICE_DBG_INIT,
      "%s: num_msix_vectors = %d\n", prefix,
      caps->num_msix_vectors);
   ice_debug(hw, ICE_DBG_INIT,
      "%s: msix_vector_first_id = %d\n", prefix,
      caps->msix_vector_first_id);
   break;
  case 136:
   caps->max_mtu = number;
   ice_debug(hw, ICE_DBG_INIT, "%s: max_mtu = %d\n",
      prefix, caps->max_mtu);
   break;
  default:
   ice_debug(hw, ICE_DBG_INIT,
      "%s: unknown capability[%d]: 0x%x\n", prefix,
      i, cap);
   break;
  }
 }
}
