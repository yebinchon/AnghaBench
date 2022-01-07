
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mbx_vf_to_pf_cmd {int dummy; } ;
struct TYPE_3__ {int module_type; int media_type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;
typedef int resp_data ;


 int hclge_gen_resp_to_vf (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int ,int *,int) ;

__attribute__((used)) static int hclge_get_vf_media_type(struct hclge_vport *vport,
       struct hclge_mbx_vf_to_pf_cmd *mbx_req)
{
 struct hclge_dev *hdev = vport->back;
 u8 resp_data[2];

 resp_data[0] = hdev->hw.mac.media_type;
 resp_data[1] = hdev->hw.mac.module_type;
 return hclge_gen_resp_to_vf(vport, mbx_req, 0, resp_data,
        sizeof(resp_data));
}
