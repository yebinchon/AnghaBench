
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int received_resp; int additional_info; scalar_t__ resp_status; scalar_t__ origin_mbx_msg; } ;
struct hclgevf_dev {TYPE_1__ mbx_resp; } ;


 int HCLGE_MBX_MAX_RESP_DATA_SIZE ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void hclgevf_reset_mbx_resp_status(struct hclgevf_dev *hdev)
{



 hdev->mbx_resp.received_resp = 0;
 hdev->mbx_resp.origin_mbx_msg = 0;
 hdev->mbx_resp.resp_status = 0;
 memset(hdev->mbx_resp.additional_info, 0, HCLGE_MBX_MAX_RESP_DATA_SIZE);
}
