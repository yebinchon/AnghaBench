
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mbx_vf_to_pf_cmd {int * msg; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int HCLGE_MAC_ADDR_MC ;
 int HCLGE_MBX_MAC_VLAN_MC_ADD ;
 int HCLGE_MBX_MAC_VLAN_MC_REMOVE ;
 int dev_err (int *,char*,int ) ;
 int hclge_add_mc_addr_common (struct hclge_vport*,int const*) ;
 int hclge_add_vport_mac_table (struct hclge_vport*,int const*,int ) ;
 int hclge_gen_resp_to_vf (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int,int *,int ) ;
 int hclge_rm_mc_addr_common (struct hclge_vport*,int const*) ;
 int hclge_rm_vport_mac_table (struct hclge_vport*,int const*,int,int ) ;

__attribute__((used)) static int hclge_set_vf_mc_mac_addr(struct hclge_vport *vport,
        struct hclge_mbx_vf_to_pf_cmd *mbx_req,
        bool gen_resp)
{
 const u8 *mac_addr = (const u8 *)(&mbx_req->msg[2]);
 struct hclge_dev *hdev = vport->back;
 u8 resp_len = 0;
 u8 resp_data;
 int status;

 if (mbx_req->msg[1] == HCLGE_MBX_MAC_VLAN_MC_ADD) {
  status = hclge_add_mc_addr_common(vport, mac_addr);
  if (!status)
   hclge_add_vport_mac_table(vport, mac_addr,
        HCLGE_MAC_ADDR_MC);
 } else if (mbx_req->msg[1] == HCLGE_MBX_MAC_VLAN_MC_REMOVE) {
  status = hclge_rm_mc_addr_common(vport, mac_addr);
  if (!status)
   hclge_rm_vport_mac_table(vport, mac_addr,
       0, HCLGE_MAC_ADDR_MC);
 } else {
  dev_err(&hdev->pdev->dev,
   "failed to set mcast mac addr, unknown subcode %d\n",
   mbx_req->msg[1]);
  return -EIO;
 }

 if (gen_resp)
  hclge_gen_resp_to_vf(vport, mbx_req, status,
         &resp_data, resp_len);

 return 0;
}
