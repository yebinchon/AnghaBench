
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_hal_msg_header {int dummy; } ;
struct wcn36xx_fw_msg_status_rsp {scalar_t__ status; } ;


 int EIO ;
 scalar_t__ WCN36XX_FW_MSG_RESULT_SUCCESS ;

__attribute__((used)) static int wcn36xx_smd_rsp_status_check(void *buf, size_t len)
{
 struct wcn36xx_fw_msg_status_rsp *rsp;

 if (len < sizeof(struct wcn36xx_hal_msg_header) +
     sizeof(struct wcn36xx_fw_msg_status_rsp))
  return -EIO;

 rsp = (struct wcn36xx_fw_msg_status_rsp *)
  (buf + sizeof(struct wcn36xx_hal_msg_header));

 if (WCN36XX_FW_MSG_RESULT_SUCCESS != rsp->status)
  return rsp->status;

 return 0;
}
