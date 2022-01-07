
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct cxl_afu {int dummy; } ;


 int EPERM ;

__attribute__((used)) static int guest_afu_cr_write8(struct cxl_afu *afu, int cr, u64 off, u8 in)
{

 return -EPERM;
}
