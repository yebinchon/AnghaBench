
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mbx_vf_to_pf_cmd {int mbx_need_resp; int * msg; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int HCLGE_MAC_ADDR_UC ;
 int HCLGE_MBX_MAC_VLAN_UC_ADD ;
 int HCLGE_MBX_MAC_VLAN_UC_MODIFY ;
 int HCLGE_MBX_MAC_VLAN_UC_REMOVE ;
 int HCLGE_MBX_NEED_RESP_BIT ;
 int dev_err (int *,char*,int ) ;
 int hclge_add_uc_addr_common (struct hclge_vport*,int const*) ;
 int hclge_add_vport_mac_table (struct hclge_vport*,int const*,int ) ;
 int hclge_gen_resp_to_vf (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int,int *,int ) ;
 int hclge_rm_uc_addr_common (struct hclge_vport*,int const*) ;
 int hclge_rm_vport_mac_table (struct hclge_vport*,int const*,int,int ) ;

__attribute__((used)) static int hclge_set_vf_uc_mac_addr(struct hclge_vport *vport,
        struct hclge_mbx_vf_to_pf_cmd *mbx_req)
{
 const u8 *mac_addr = (const u8 *)(&mbx_req->msg[2]);
 struct hclge_dev *hdev = vport->back;
 int status;

 if (mbx_req->msg[1] == HCLGE_MBX_MAC_VLAN_UC_MODIFY) {
  const u8 *old_addr = (const u8 *)(&mbx_req->msg[8]);

  hclge_rm_uc_addr_common(vport, old_addr);
  status = hclge_add_uc_addr_common(vport, mac_addr);
  if (status) {
   hclge_add_uc_addr_common(vport, old_addr);
  } else {
   hclge_rm_vport_mac_table(vport, mac_addr,
       0, HCLGE_MAC_ADDR_UC);
   hclge_add_vport_mac_table(vport, mac_addr,
        HCLGE_MAC_ADDR_UC);
  }
 } else if (mbx_req->msg[1] == HCLGE_MBX_MAC_VLAN_UC_ADD) {
  status = hclge_add_uc_addr_common(vport, mac_addr);
  if (!status)
   hclge_add_vport_mac_table(vport, mac_addr,
        HCLGE_MAC_ADDR_UC);
 } else if (mbx_req->msg[1] == HCLGE_MBX_MAC_VLAN_UC_REMOVE) {
  status = hclge_rm_uc_addr_common(vport, mac_addr);
  if (!status)
   hclge_rm_vport_mac_table(vport, mac_addr,
       0, HCLGE_MAC_ADDR_UC);
 } else {
  dev_err(&hdev->pdev->dev,
   "failed to set unicast mac addr, unknown subcode %d\n",
   mbx_req->msg[1]);
  return -EIO;
 }

 if (mbx_req->mbx_need_resp & HCLGE_MBX_NEED_RESP_BIT)
  hclge_gen_resp_to_vf(vport, mbx_req, status, ((void*)0), 0);

 return 0;
}
