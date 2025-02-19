
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mbx_vf_to_pf_cmd {int dummy; } ;
struct hclge_dev {int num_rx_desc; int num_tx_desc; } ;


 int HCLGE_TQPS_DEPTH_INFO_LEN ;
 int hclge_gen_resp_to_vf (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int ,int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int hclge_get_vf_queue_depth(struct hclge_vport *vport,
        struct hclge_mbx_vf_to_pf_cmd *mbx_req,
        bool gen_resp)
{

 u8 resp_data[4];
 struct hclge_dev *hdev = vport->back;


 memcpy(&resp_data[0], &hdev->num_tx_desc, sizeof(u16));
 memcpy(&resp_data[2], &hdev->num_rx_desc, sizeof(u16));
 return hclge_gen_resp_to_vf(vport, mbx_req, 0, resp_data,
        4);
}
