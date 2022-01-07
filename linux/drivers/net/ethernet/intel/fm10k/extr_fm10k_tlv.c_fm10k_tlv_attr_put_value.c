
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int s64 ;
typedef int s32 ;


 int BIT (int) ;
 int FM10K_ERR_PARAM ;
 size_t FM10K_TLV_DWORD_LEN (int) ;
 int FM10K_TLV_HDR_LEN ;
 scalar_t__ FM10K_TLV_LEN_ALIGN (int) ;
 int FM10K_TLV_LEN_SHIFT ;

s32 fm10k_tlv_attr_put_value(u32 *msg, u16 attr_id, s64 value, u32 len)
{
 u32 *attr;


 if (!msg || !len || len > 8 || (len & (len - 1)))
  return FM10K_ERR_PARAM;

 attr = &msg[FM10K_TLV_DWORD_LEN(*msg)];

 if (len < 4) {
  attr[1] = (u32)value & (BIT(8 * len) - 1);
 } else {
  attr[1] = (u32)value;
  if (len > 4)
   attr[2] = (u32)(value >> 32);
 }


 len <<= FM10K_TLV_LEN_SHIFT;
 attr[0] = len | attr_id;


 len += FM10K_TLV_HDR_LEN << FM10K_TLV_LEN_SHIFT;
 *msg += FM10K_TLV_LEN_ALIGN(len);

 return 0;
}
