
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_func_cfg_input {int options; int enables; int fid; int member_0; } ;
struct bnxt {int hwrm_spec_code; } ;
typedef int req ;


 scalar_t__ BNXT_VF (struct bnxt*) ;
 int FUNC_CFG_REQ_ENABLES_CACHE_LINESIZE ;
 int FUNC_CFG_REQ_OPTIONS_CACHE_LINESIZE_SIZE_128 ;
 int FUNC_CFG_REQ_OPTIONS_CACHE_LINESIZE_SIZE_64 ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_FUNC_CFG ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_func_cfg_input*,int ,int,int) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_func_cfg_input*,int,int ) ;

__attribute__((used)) static int bnxt_hwrm_set_cache_line_size(struct bnxt *bp, int size)
{
 struct hwrm_func_cfg_input req = {0};
 int rc;

 if (BNXT_VF(bp) || bp->hwrm_spec_code < 0x10803)
  return 0;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_FUNC_CFG, -1, -1);
 req.fid = cpu_to_le16(0xffff);
 req.enables = cpu_to_le32(FUNC_CFG_REQ_ENABLES_CACHE_LINESIZE);
 req.options = FUNC_CFG_REQ_OPTIONS_CACHE_LINESIZE_SIZE_64;
 if (size == 128)
  req.options = FUNC_CFG_REQ_OPTIONS_CACHE_LINESIZE_SIZE_128;

 rc = hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 return rc;
}
