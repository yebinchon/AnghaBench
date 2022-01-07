
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_vport {int vport_id; struct hclge_dev* back; } ;
struct hclge_mac_vlan_tbl_entry_cmd {int entry_type; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct hclge_desc {struct hclge_mac_vlan_tbl_entry_cmd* data; } ;
typedef int req ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOSPC ;
 int HCLGE_MAC_VLAN_BIT0_EN_B ;
 int dev_err (int *,char*,...) ;
 int hclge_add_mac_vlan_tbl (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*,struct hclge_desc*) ;
 int hclge_lookup_mac_vlan_tbl (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*,struct hclge_desc*,int) ;
 int hclge_prepare_mac_addr (struct hclge_mac_vlan_tbl_entry_cmd*,unsigned char const*,int) ;
 int hclge_update_desc_vfid (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,int ) ;
 int is_multicast_ether_addr (unsigned char const*) ;
 int memset (struct hclge_mac_vlan_tbl_entry_cmd*,int ,int) ;

int hclge_add_mc_addr_common(struct hclge_vport *vport,
        const unsigned char *addr)
{
 struct hclge_dev *hdev = vport->back;
 struct hclge_mac_vlan_tbl_entry_cmd req;
 struct hclge_desc desc[3];
 int status;


 if (!is_multicast_ether_addr(addr)) {
  dev_err(&hdev->pdev->dev,
   "Add mc mac err! invalid mac:%pM.\n",
    addr);
  return -EINVAL;
 }
 memset(&req, 0, sizeof(req));
 hnae3_set_bit(req.entry_type, HCLGE_MAC_VLAN_BIT0_EN_B, 0);
 hclge_prepare_mac_addr(&req, addr, 1);
 status = hclge_lookup_mac_vlan_tbl(vport, &req, desc, 1);
 if (status) {

  memset(desc[0].data, 0, sizeof(desc[0].data));
  memset(desc[1].data, 0, sizeof(desc[0].data));
  memset(desc[2].data, 0, sizeof(desc[0].data));
 }
 status = hclge_update_desc_vfid(desc, vport->vport_id, 0);
 if (status)
  return status;
 status = hclge_add_mac_vlan_tbl(vport, &req, desc);

 if (status == -ENOSPC)
  dev_err(&hdev->pdev->dev, "mc mac vlan table is full\n");

 return status;
}
