
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct list_head {int dummy; } ;
struct hclge_vport_mac_addr_cfg {int hd_tbl_status; int node; int mac_addr; } ;
struct hclge_vport {struct list_head mc_mac_list; struct list_head uc_mac_list; int vport_id; } ;
typedef enum HCLGE_MAC_ADDR_TYPE { ____Placeholder_HCLGE_MAC_ADDR_TYPE } HCLGE_MAC_ADDR_TYPE ;


 int ETH_ALEN ;
 int GFP_KERNEL ;
 int HCLGE_MAC_ADDR_UC ;
 struct hclge_vport_mac_addr_cfg* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int memcpy (int ,int const*,int ) ;

void hclge_add_vport_mac_table(struct hclge_vport *vport, const u8 *mac_addr,
          enum HCLGE_MAC_ADDR_TYPE mac_type)
{
 struct hclge_vport_mac_addr_cfg *mac_cfg;
 struct list_head *list;

 if (!vport->vport_id)
  return;

 mac_cfg = kzalloc(sizeof(*mac_cfg), GFP_KERNEL);
 if (!mac_cfg)
  return;

 mac_cfg->hd_tbl_status = 1;
 memcpy(mac_cfg->mac_addr, mac_addr, ETH_ALEN);

 list = (mac_type == HCLGE_MAC_ADDR_UC) ?
        &vport->uc_mac_list : &vport->mc_mac_list;

 list_add_tail(&mac_cfg->node, list);
}
