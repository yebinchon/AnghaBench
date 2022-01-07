
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgx {int dummy; } ;


 int CGX_CMD_LINK_BRING_DOWN ;
 int CGX_CMD_LINK_BRING_UP ;
 int CMDREG_ID ;
 int FIELD_SET (int ,int ,int ) ;
 int cgx_fwi_cmd_generic (int ,int *,struct cgx*,int) ;

__attribute__((used)) static int cgx_fwi_link_change(struct cgx *cgx, int lmac_id, bool enable)
{
 u64 req = 0;
 u64 resp;

 if (enable)
  req = FIELD_SET(CMDREG_ID, CGX_CMD_LINK_BRING_UP, req);
 else
  req = FIELD_SET(CMDREG_ID, CGX_CMD_LINK_BRING_DOWN, req);

 return cgx_fwi_cmd_generic(req, &resp, cgx, lmac_id);
}
