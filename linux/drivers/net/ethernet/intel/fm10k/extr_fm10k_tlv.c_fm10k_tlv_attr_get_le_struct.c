
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int s32 ;
typedef int __le32 ;


 int FM10K_ERR_PARAM ;
 size_t FM10K_TLV_LEN_SHIFT ;
 int cpu_to_le32 (size_t) ;

s32 fm10k_tlv_attr_get_le_struct(u32 *attr, void *le_struct, u32 len)
{
 __le32 *le32_ptr = (__le32 *)le_struct;
 u32 i;


 if (!le_struct || !attr)
  return FM10K_ERR_PARAM;

 if ((*attr >> FM10K_TLV_LEN_SHIFT) != len)
  return FM10K_ERR_PARAM;

 attr++;

 for (i = 0; len; i++, len -= 4)
  le32_ptr[i] = cpu_to_le32(attr[i]);

 return 0;
}
