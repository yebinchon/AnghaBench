
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mac_vlan_tbl_entry_cmd {int entry_type; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
typedef int req ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int HCLGE_MAC_VLAN_BIT0_EN_B ;
 int dev_dbg (int *,char*,unsigned char const*) ;
 int hclge_prepare_mac_addr (struct hclge_mac_vlan_tbl_entry_cmd*,unsigned char const*,int) ;
 int hclge_remove_mac_vlan_tbl (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*) ;
 int hclge_update_umv_space (struct hclge_vport*,int) ;
 int hnae3_set_bit (int ,int ,int ) ;
 scalar_t__ is_broadcast_ether_addr (unsigned char const*) ;
 scalar_t__ is_multicast_ether_addr (unsigned char const*) ;
 scalar_t__ is_zero_ether_addr (unsigned char const*) ;
 int memset (struct hclge_mac_vlan_tbl_entry_cmd*,int ,int) ;

int hclge_rm_uc_addr_common(struct hclge_vport *vport,
       const unsigned char *addr)
{
 struct hclge_dev *hdev = vport->back;
 struct hclge_mac_vlan_tbl_entry_cmd req;
 int ret;


 if (is_zero_ether_addr(addr) ||
     is_broadcast_ether_addr(addr) ||
     is_multicast_ether_addr(addr)) {
  dev_dbg(&hdev->pdev->dev, "Remove mac err! invalid mac:%pM.\n",
   addr);
  return -EINVAL;
 }

 memset(&req, 0, sizeof(req));
 hnae3_set_bit(req.entry_type, HCLGE_MAC_VLAN_BIT0_EN_B, 0);
 hclge_prepare_mac_addr(&req, addr, 0);
 ret = hclge_remove_mac_vlan_tbl(vport, &req);
 if (!ret)
  hclge_update_umv_space(vport, 1);

 return ret;
}
