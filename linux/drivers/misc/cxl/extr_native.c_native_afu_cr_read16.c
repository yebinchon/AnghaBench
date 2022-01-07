
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct cxl_afu {int dummy; } ;


 int native_afu_cr_read32 (struct cxl_afu*,int,int,int*) ;

__attribute__((used)) static int native_afu_cr_read16(struct cxl_afu *afu, int cr, u64 off, u16 *out)
{
 u64 aligned_off = off & ~0x3L;
 u32 val;
 int rc;

 rc = native_afu_cr_read32(afu, cr, aligned_off, &val);
 if (!rc)
  *out = (val >> ((off & 0x3) * 8)) & 0xffff;
 return rc;
}
