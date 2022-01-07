
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_vport {int vport_id; struct hclge_dev* back; } ;
struct hclge_mac_vlan_tbl_entry_cmd {int entry_type; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct hclge_desc {int dummy; } ;
typedef int req ;
typedef enum hclge_cmd_status { ____Placeholder_hclge_cmd_status } hclge_cmd_status ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int HCLGE_MAC_VLAN_BIT0_EN_B ;
 int dev_dbg (int *,char*,unsigned char const*) ;
 int hclge_add_mac_vlan_tbl (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*,struct hclge_desc*) ;
 scalar_t__ hclge_is_all_function_id_zero (struct hclge_desc*) ;
 int hclge_lookup_mac_vlan_tbl (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*,struct hclge_desc*,int) ;
 int hclge_prepare_mac_addr (struct hclge_mac_vlan_tbl_entry_cmd*,unsigned char const*,int) ;
 int hclge_remove_mac_vlan_tbl (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*) ;
 int hclge_update_desc_vfid (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,int ) ;
 int is_multicast_ether_addr (unsigned char const*) ;
 int memset (struct hclge_mac_vlan_tbl_entry_cmd*,int ,int) ;

int hclge_rm_mc_addr_common(struct hclge_vport *vport,
       const unsigned char *addr)
{
 struct hclge_dev *hdev = vport->back;
 struct hclge_mac_vlan_tbl_entry_cmd req;
 enum hclge_cmd_status status;
 struct hclge_desc desc[3];


 if (!is_multicast_ether_addr(addr)) {
  dev_dbg(&hdev->pdev->dev,
   "Remove mc mac err! invalid mac:%pM.\n",
    addr);
  return -EINVAL;
 }

 memset(&req, 0, sizeof(req));
 hnae3_set_bit(req.entry_type, HCLGE_MAC_VLAN_BIT0_EN_B, 0);
 hclge_prepare_mac_addr(&req, addr, 1);
 status = hclge_lookup_mac_vlan_tbl(vport, &req, desc, 1);
 if (!status) {

  status = hclge_update_desc_vfid(desc, vport->vport_id, 1);
  if (status)
   return status;

  if (hclge_is_all_function_id_zero(desc))

   status = hclge_remove_mac_vlan_tbl(vport, &req);
  else

   status = hclge_add_mac_vlan_tbl(vport, &req, desc);

 } else {






  status = 0;
 }

 return status;
}
