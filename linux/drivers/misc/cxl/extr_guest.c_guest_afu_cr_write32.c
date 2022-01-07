
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct cxl_afu {int dummy; } ;


 int EPERM ;

__attribute__((used)) static int guest_afu_cr_write32(struct cxl_afu *afu, int cr, u64 off, u32 in)
{

 return -EPERM;
}
