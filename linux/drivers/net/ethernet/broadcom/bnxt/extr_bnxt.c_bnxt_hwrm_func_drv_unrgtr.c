
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_func_drv_unrgtr_input {int member_0; } ;
struct bnxt {int dummy; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_FUNC_DRV_UNRGTR ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_func_drv_unrgtr_input*,int ,int,int) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_func_drv_unrgtr_input*,int,int ) ;

__attribute__((used)) static int bnxt_hwrm_func_drv_unrgtr(struct bnxt *bp)
{
 struct hwrm_func_drv_unrgtr_input req = {0};

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_FUNC_DRV_UNRGTR, -1, -1);
 return hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}
