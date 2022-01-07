
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct cxl_afu {int dummy; } ;


 int native_afu_cr_read32 (struct cxl_afu*,int,int,int*) ;
 int native_afu_cr_write32 (struct cxl_afu*,int,int,int) ;

__attribute__((used)) static int native_afu_cr_write8(struct cxl_afu *afu, int cr, u64 off, u8 in)
{
 u64 aligned_off = off & ~0x3L;
 u32 val32, mask, shift;
 int rc;

 rc = native_afu_cr_read32(afu, cr, aligned_off, &val32);
 if (rc)
  return rc;
 shift = (off & 0x3) * 8;
 mask = 0xff << shift;
 val32 = (val32 & ~mask) | (in << shift);

 rc = native_afu_cr_write32(afu, cr, aligned_off, val32);
 return rc;
}
