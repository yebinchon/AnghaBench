
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_ver_get_input {int hwrm_intf_upd; int hwrm_intf_min; int hwrm_intf_maj; int member_0; } ;
struct bnxt {int dummy; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_VERSION_MAJOR ;
 int HWRM_VERSION_MINOR ;
 int HWRM_VERSION_UPDATE ;
 int HWRM_VER_GET ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_ver_get_input*,int ,int,int) ;
 int bnxt_hwrm_do_send_msg (struct bnxt*,struct hwrm_ver_get_input*,int,int ,int) ;

__attribute__((used)) static int __bnxt_hwrm_ver_get(struct bnxt *bp, bool silent)
{
 struct hwrm_ver_get_input req = {0};
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_VER_GET, -1, -1);
 req.hwrm_intf_maj = HWRM_VERSION_MAJOR;
 req.hwrm_intf_min = HWRM_VERSION_MINOR;
 req.hwrm_intf_upd = HWRM_VERSION_UPDATE;

 rc = bnxt_hwrm_do_send_msg(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT,
       silent);
 return rc;
}
