
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgx {int dummy; } ;


 int CGX_CMD_GET_FW_VER ;
 int CMDREG_ID ;
 int FIELD_SET (int ,int ,int ) ;
 int cgx_fwi_cmd_generic (int ,int *,struct cgx*,int ) ;

__attribute__((used)) static inline int cgx_fwi_read_version(u64 *resp, struct cgx *cgx)
{
 u64 req = 0;

 req = FIELD_SET(CMDREG_ID, CGX_CMD_GET_FW_VER, req);
 return cgx_fwi_cmd_generic(req, resp, cgx, 0);
}
