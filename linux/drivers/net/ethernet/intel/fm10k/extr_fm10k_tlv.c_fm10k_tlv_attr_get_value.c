
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
typedef int s32 ;


 int FM10K_ERR_PARAM ;
 int FM10K_TLV_LEN_SHIFT ;

s32 fm10k_tlv_attr_get_value(u32 *attr, void *value, u32 len)
{

 if (!attr || !value)
  return FM10K_ERR_PARAM;

 if ((*attr >> FM10K_TLV_LEN_SHIFT) != len)
  return FM10K_ERR_PARAM;

 if (len == 8)
  *(u64 *)value = ((u64)attr[2] << 32) | attr[1];
 else if (len == 4)
  *(u32 *)value = attr[1];
 else if (len == 2)
  *(u16 *)value = (u16)attr[1];
 else
  *(u8 *)value = (u8)attr[1];

 return 0;
}
