
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; int code; } ;
union fjes_device_command_res {TYPE_2__ info; } ;
union fjes_device_command_req {TYPE_2__ info; } ;
struct TYPE_3__ {int * max_epid; int res_buf_size; int req_buf_size; union fjes_device_command_res* res_buf; union fjes_device_command_res* req_buf; } ;
struct fjes_hw {TYPE_1__ hw_info; } ;
typedef enum fjes_dev_command_response_e { ____Placeholder_fjes_dev_command_response_e } fjes_dev_command_response_e ;


 int EBUSY ;
 int ENOMSG ;
 int EPERM ;
 int FJES_CMD_REQ_INFO ;



 int FJES_CMD_STATUS_NORMAL ;


 scalar_t__ FJES_DEV_COMMAND_INFO_REQ_LEN ;
 scalar_t__ FJES_DEV_COMMAND_INFO_RES_LEN (int ) ;
 int fjes_hw_issue_request_command (struct fjes_hw*,int ) ;
 int memset (union fjes_device_command_res*,int ,int ) ;
 int trace_fjes_hw_request_info (struct fjes_hw*,union fjes_device_command_res*) ;
 int trace_fjes_hw_request_info_err (char*) ;

int fjes_hw_request_info(struct fjes_hw *hw)
{
 union fjes_device_command_req *req_buf = hw->hw_info.req_buf;
 union fjes_device_command_res *res_buf = hw->hw_info.res_buf;
 enum fjes_dev_command_response_e ret;
 int result;

 memset(req_buf, 0, hw->hw_info.req_buf_size);
 memset(res_buf, 0, hw->hw_info.res_buf_size);

 req_buf->info.length = FJES_DEV_COMMAND_INFO_REQ_LEN;

 res_buf->info.length = 0;
 res_buf->info.code = 0;

 ret = fjes_hw_issue_request_command(hw, FJES_CMD_REQ_INFO);
 trace_fjes_hw_request_info(hw, res_buf);

 result = 0;

 if (FJES_DEV_COMMAND_INFO_RES_LEN((*hw->hw_info.max_epid)) !=
  res_buf->info.length) {
  trace_fjes_hw_request_info_err("Invalid res_buf");
  result = -ENOMSG;
 } else if (ret == FJES_CMD_STATUS_NORMAL) {
  switch (res_buf->info.code) {
  case 132:
   result = 0;
   break;
  default:
   result = -EPERM;
   break;
  }
 } else {
  switch (ret) {
  case 128:
   result = -EPERM;
   break;
  case 129:
   trace_fjes_hw_request_info_err("Timeout");
   result = -EBUSY;
   break;
  case 131:
   result = -EPERM;
   break;
  case 130:
   result = -EPERM;
   break;
  default:
   result = -EPERM;
   break;
  }
 }

 return result;
}
