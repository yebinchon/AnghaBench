
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_func_reset_input {scalar_t__ enables; int member_0; } ;
struct bnxt {int dummy; } ;
typedef int req ;


 int HWRM_FUNC_RESET ;
 int HWRM_RESET_TIMEOUT ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_func_reset_input*,int ,int,int) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_func_reset_input*,int,int ) ;

__attribute__((used)) static int bnxt_hwrm_func_reset(struct bnxt *bp)
{
 struct hwrm_func_reset_input req = {0};

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_FUNC_RESET, -1, -1);
 req.enables = 0;

 return hwrm_send_message(bp, &req, sizeof(req), HWRM_RESET_TIMEOUT);
}
