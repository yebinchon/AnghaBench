
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgx {int dummy; } ;


 int CGX_CMD_GET_MKEX_PRFL_SIZE ;
 int CMDREG_ID ;
 int FIELD_GET (int ,int ) ;
 int FIELD_SET (int ,int ,int ) ;
 int RESP_MKEX_PRFL_SIZE ;
 int cgx_fwi_cmd_generic (int ,int *,struct cgx*,int ) ;

__attribute__((used)) static inline int cgx_fwi_get_mkex_prfl_sz(u64 *prfl_sz,
        struct cgx *cgx)
{
 u64 req = 0;
 u64 resp;
 int err;

 req = FIELD_SET(CMDREG_ID, CGX_CMD_GET_MKEX_PRFL_SIZE, req);
 err = cgx_fwi_cmd_generic(req, &resp, cgx, 0);
 if (!err)
  *prfl_sz = FIELD_GET(RESP_MKEX_PRFL_SIZE, resp);

 return err;
}
