
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mbx_vf_to_pf_cmd {int* msg; } ;
struct hclge_dev {TYPE_1__* vport; } ;
struct TYPE_2__ {int * rss_hash_key; } ;


 int HCLGE_RSS_MBX_RESP_LEN ;
 int hclge_gen_resp_to_vf (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int ,int*,int) ;
 int memcpy (int*,int *,int) ;

__attribute__((used)) static int hclge_get_rss_key(struct hclge_vport *vport,
        struct hclge_mbx_vf_to_pf_cmd *mbx_req)
{

 u8 resp_data[8];
 struct hclge_dev *hdev = vport->back;
 u8 index;

 index = mbx_req->msg[2];

 memcpy(&resp_data[0],
        &hdev->vport[0].rss_hash_key[index * 8],
        8);

 return hclge_gen_resp_to_vf(vport, mbx_req, 0, resp_data,
        8);
}
