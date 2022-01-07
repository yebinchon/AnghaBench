
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct hwrm_fw_reset_input {int embedded_proc_type; void* selfrst_status; int member_0; } ;
struct bnxt {int dummy; } ;
typedef int req ;
 int EACCES ;
 int EINVAL ;
 int FW_RESET_REQ_EMBEDDED_PROC_TYPE_AP ;
 int FW_RESET_REQ_EMBEDDED_PROC_TYPE_BOOT ;
 int FW_RESET_REQ_EMBEDDED_PROC_TYPE_CHIP ;
 int FW_RESET_REQ_EMBEDDED_PROC_TYPE_MGMT ;
 int FW_RESET_REQ_EMBEDDED_PROC_TYPE_NETCTRL ;
 int FW_RESET_REQ_EMBEDDED_PROC_TYPE_ROCE ;
 void* FW_RESET_REQ_SELFRST_STATUS_SELFRSTASAP ;
 void* FW_RESET_REQ_SELFRST_STATUS_SELFRSTPCIERST ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_FW_RESET ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_fw_reset_input*,int ,int,int) ;
 int bnxt_print_admin_err (struct bnxt*) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_fw_reset_input*,int,int ) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_firmware_reset(struct net_device *dev,
          u16 dir_type)
{
 struct hwrm_fw_reset_input req = {0};
 struct bnxt *bp = netdev_priv(dev);
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_FW_RESET, -1, -1);



 switch (dir_type) {
 case 130:
 case 132:
 case 131:
  req.embedded_proc_type = FW_RESET_REQ_EMBEDDED_PROC_TYPE_BOOT;

  req.selfrst_status = FW_RESET_REQ_SELFRST_STATUS_SELFRSTPCIERST;
  break;
 case 136:
 case 135:
  req.embedded_proc_type = FW_RESET_REQ_EMBEDDED_PROC_TYPE_MGMT;

  req.selfrst_status = FW_RESET_REQ_SELFRST_STATUS_SELFRSTPCIERST;
  break;
 case 129:
 case 128:
  req.embedded_proc_type =
   FW_RESET_REQ_EMBEDDED_PROC_TYPE_NETCTRL;
  break;
 case 134:
 case 133:
  req.embedded_proc_type = FW_RESET_REQ_EMBEDDED_PROC_TYPE_ROCE;
  break;
 case 137:
  req.embedded_proc_type = FW_RESET_REQ_EMBEDDED_PROC_TYPE_CHIP;
  req.selfrst_status = FW_RESET_REQ_SELFRST_STATUS_SELFRSTASAP;
  break;
 case 138:
  req.embedded_proc_type = FW_RESET_REQ_EMBEDDED_PROC_TYPE_AP;
  break;
 default:
  return -EINVAL;
 }

 rc = hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (rc == -EACCES)
  bnxt_print_admin_err(bp);
 return rc;
}
