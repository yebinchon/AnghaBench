
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct lmac {int dummy; } ;
struct cgx {int dummy; } ;


 scalar_t__ CGX_STAT_FAIL ;
 int EIO ;
 int ENODEV ;
 int EVTREG_STAT ;
 scalar_t__ FIELD_GET (int ,int ) ;
 int cgx_fwi_cmd_send (int ,int *,struct lmac*) ;
 struct lmac* lmac_pdata (int,struct cgx*) ;

__attribute__((used)) static inline int cgx_fwi_cmd_generic(u64 req, u64 *resp,
          struct cgx *cgx, int lmac_id)
{
 struct lmac *lmac;
 int err;

 lmac = lmac_pdata(lmac_id, cgx);
 if (!lmac)
  return -ENODEV;

 err = cgx_fwi_cmd_send(req, resp, lmac);


 if (!err) {
  if (FIELD_GET(EVTREG_STAT, *resp) == CGX_STAT_FAIL)
   return -EIO;
  else
   return 0;
 }

 return err;
}
