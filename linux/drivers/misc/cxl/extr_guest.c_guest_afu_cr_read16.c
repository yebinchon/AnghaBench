
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u16 ;
struct cxl_afu {int dummy; } ;


 int _guest_afu_cr_readXX (int,struct cxl_afu*,int,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int guest_afu_cr_read16(struct cxl_afu *afu, int cr_idx, u64 offset,
   u16 *out)
{
 int rc;
 u64 val;

 rc = _guest_afu_cr_readXX(2, afu, cr_idx, offset, &val);
 if (!rc)
  *out = (u16) val;
 return rc;
}
