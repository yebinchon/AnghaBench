
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int complete; } ;
union REG_CS {TYPE_1__ bits; void* reg; } ;
struct TYPE_4__ {int req_start; int req_code; scalar_t__ error; int err_info; } ;
union REG_CR {TYPE_2__ bits; void* reg; } ;
struct fjes_hw {int dummy; } ;
typedef enum fjes_dev_command_response_e { ____Placeholder_fjes_dev_command_response_e } fjes_dev_command_response_e ;
typedef enum fjes_dev_command_request_type { ____Placeholder_fjes_dev_command_request_type } fjes_dev_command_request_type ;




 int FJES_CMD_STATUS_ERROR_PARAM ;
 int FJES_CMD_STATUS_ERROR_STATUS ;
 int FJES_CMD_STATUS_NORMAL ;
 int FJES_CMD_STATUS_TIMEOUT ;
 int FJES_CMD_STATUS_UNKNOWN ;
 int FJES_COMMAND_REQ_TIMEOUT ;
 int XSCT_CR ;
 int XSCT_CS ;
 int msleep (int) ;
 void* rd32 (int ) ;
 int trace_fjes_hw_issue_request_command (union REG_CR*,union REG_CS*,int,int) ;
 int wr32 (int ,void*) ;

__attribute__((used)) static enum fjes_dev_command_response_e
fjes_hw_issue_request_command(struct fjes_hw *hw,
         enum fjes_dev_command_request_type type)
{
 enum fjes_dev_command_response_e ret = FJES_CMD_STATUS_UNKNOWN;
 union REG_CR cr;
 union REG_CS cs;
 int timeout = FJES_COMMAND_REQ_TIMEOUT * 1000;

 cr.reg = 0;
 cr.bits.req_start = 1;
 cr.bits.req_code = type;
 wr32(XSCT_CR, cr.reg);
 cr.reg = rd32(XSCT_CR);

 if (cr.bits.error == 0) {
  timeout = FJES_COMMAND_REQ_TIMEOUT * 1000;
  cs.reg = rd32(XSCT_CS);

  while ((cs.bits.complete != 1) && timeout > 0) {
   msleep(1000);
   cs.reg = rd32(XSCT_CS);
   timeout -= 1000;
  }

  if (cs.bits.complete == 1)
   ret = FJES_CMD_STATUS_NORMAL;
  else if (timeout <= 0)
   ret = FJES_CMD_STATUS_TIMEOUT;

 } else {
  switch (cr.bits.err_info) {
  case 129:
   ret = FJES_CMD_STATUS_ERROR_PARAM;
   break;
  case 128:
   ret = FJES_CMD_STATUS_ERROR_STATUS;
   break;
  default:
   ret = FJES_CMD_STATUS_UNKNOWN;
   break;
  }
 }

 trace_fjes_hw_issue_request_command(&cr, &cs, timeout, ret);

 return ret;
}
