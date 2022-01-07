
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; int epid; int code; } ;
union fjes_device_command_res {TYPE_1__ unshare_buffer; } ;
union fjes_device_command_req {TYPE_1__ unshare_buffer; } ;
struct TYPE_4__ {int buffer_share_bit; int res_buf_size; int req_buf_size; struct fjes_device_shared_info* share; union fjes_device_command_res* res_buf; union fjes_device_command_res* req_buf; } ;
struct fjes_hw {int my_epid; TYPE_2__ hw_info; int base; } ;
struct fjes_device_shared_info {int dummy; } ;
typedef enum fjes_dev_command_response_e { ____Placeholder_fjes_dev_command_response_e } fjes_dev_command_response_e ;


 int EBUSY ;
 int ENOMSG ;
 int EPERM ;


 int FJES_CMD_REQ_UNSHARE_BUFFER ;


 int FJES_CMD_STATUS_NORMAL ;


 int FJES_COMMAND_REQ_BUFF_TIMEOUT ;
 scalar_t__ FJES_DEV_COMMAND_UNSHARE_BUFFER_REQ_LEN ;
 scalar_t__ FJES_DEV_COMMAND_UNSHARE_BUFFER_RES_LEN ;
 int clear_bit (int,int *) ;
 int fjes_hw_issue_request_command (struct fjes_hw*,int ) ;
 int memset (union fjes_device_command_res*,int ,int ) ;
 int msleep (int) ;
 int test_bit (int,int *) ;
 int trace_fjes_hw_unregister_buff_addr (union fjes_device_command_res*,int) ;
 int trace_fjes_hw_unregister_buff_addr_err (char*) ;
 int trace_fjes_hw_unregister_buff_addr_req (union fjes_device_command_res*) ;

int fjes_hw_unregister_buff_addr(struct fjes_hw *hw, int dest_epid)
{
 union fjes_device_command_req *req_buf = hw->hw_info.req_buf;
 union fjes_device_command_res *res_buf = hw->hw_info.res_buf;
 struct fjes_device_shared_info *share = hw->hw_info.share;
 enum fjes_dev_command_response_e ret;
 int timeout;
 int result;

 if (!hw->base)
  return -EPERM;

 if (!req_buf || !res_buf || !share)
  return -EPERM;

 if (!test_bit(dest_epid, &hw->hw_info.buffer_share_bit))
  return 0;

 memset(req_buf, 0, hw->hw_info.req_buf_size);
 memset(res_buf, 0, hw->hw_info.res_buf_size);

 req_buf->unshare_buffer.length =
   FJES_DEV_COMMAND_UNSHARE_BUFFER_REQ_LEN;
 req_buf->unshare_buffer.epid = dest_epid;

 res_buf->unshare_buffer.length = 0;
 res_buf->unshare_buffer.code = 0;

 trace_fjes_hw_unregister_buff_addr_req(req_buf);
 ret = fjes_hw_issue_request_command(hw, FJES_CMD_REQ_UNSHARE_BUFFER);

 timeout = FJES_COMMAND_REQ_BUFF_TIMEOUT * 1000;
 while ((ret == FJES_CMD_STATUS_NORMAL) &&
        (res_buf->unshare_buffer.length ==
  FJES_DEV_COMMAND_UNSHARE_BUFFER_RES_LEN) &&
        (res_buf->unshare_buffer.code ==
  133) &&
        (timeout > 0)) {
  msleep(200 + hw->my_epid * 20);
  timeout -= (200 + hw->my_epid * 20);

  res_buf->unshare_buffer.length = 0;
  res_buf->unshare_buffer.code = 0;

  ret =
  fjes_hw_issue_request_command(hw, FJES_CMD_REQ_UNSHARE_BUFFER);
 }

 result = 0;

 trace_fjes_hw_unregister_buff_addr(res_buf, timeout);

 if (res_buf->unshare_buffer.length !=
   FJES_DEV_COMMAND_UNSHARE_BUFFER_RES_LEN) {
  trace_fjes_hw_unregister_buff_addr_err("Invalid res_buf");
  result = -ENOMSG;
 } else if (ret == FJES_CMD_STATUS_NORMAL) {
  switch (res_buf->unshare_buffer.code) {
  case 132:
   result = 0;
   clear_bit(dest_epid, &hw->hw_info.buffer_share_bit);
   break;
  case 133:
   trace_fjes_hw_unregister_buff_addr_err("Busy Timeout");
   result = -EBUSY;
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
   trace_fjes_hw_unregister_buff_addr_err("Timeout");
   result = -EBUSY;
   break;
  case 131:
  case 130:
  default:
   result = -EPERM;
   break;
  }
 }

 return result;
}
