
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cxl_afu {int dummy; } ;


 int _guest_afu_cr_readXX (int,struct cxl_afu*,int,int ,int *) ;

__attribute__((used)) static int guest_afu_cr_read64(struct cxl_afu *afu, int cr_idx, u64 offset,
   u64 *out)
{
 return _guest_afu_cr_readXX(8, afu, cr_idx, offset, out);
}
