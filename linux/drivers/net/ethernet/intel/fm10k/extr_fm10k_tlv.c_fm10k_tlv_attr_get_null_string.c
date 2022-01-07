
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef size_t u32 ;
typedef int s32 ;


 int FM10K_ERR_PARAM ;
 size_t FM10K_TLV_LEN_SHIFT ;

__attribute__((used)) static s32 fm10k_tlv_attr_get_null_string(u32 *attr, unsigned char *string)
{
 u32 len;


 if (!string || !attr)
  return FM10K_ERR_PARAM;

 len = *attr >> FM10K_TLV_LEN_SHIFT;
 attr++;

 while (len--)
  string[len] = (u8)(attr[len / 4] >> (8 * (len % 4)));

 return 0;
}
