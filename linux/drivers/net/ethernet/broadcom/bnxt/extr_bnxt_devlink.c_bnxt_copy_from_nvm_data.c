
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union devlink_param_value {scalar_t__ vu8; scalar_t__ vu16; scalar_t__ vu32; int vbool; } ;
union bnxt_nvm_data {int val32; int val8; } ;
typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void bnxt_copy_from_nvm_data(union devlink_param_value *dst,
        union bnxt_nvm_data *src,
        int nvm_num_bits, int dl_num_bytes)
{
 u32 val32;

 if (nvm_num_bits == 1) {
  dst->vbool = src->val8;
  return;
 }
 val32 = le32_to_cpu(src->val32);
 if (dl_num_bytes == 4)
  dst->vu32 = val32;
 else if (dl_num_bytes == 2)
  dst->vu16 = (u16)val32;
 else if (dl_num_bytes == 1)
  dst->vu8 = (u8)val32;
}
