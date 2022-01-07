
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int s32 ;


 int FM10K_ERR_PARAM ;
 size_t FM10K_TLV_DWORD_LEN (int) ;
 int FM10K_TLV_HDR_LEN ;
 scalar_t__ FM10K_TLV_LEN_ALIGN (int) ;
 int FM10K_TLV_LEN_SHIFT ;

__attribute__((used)) static s32 fm10k_tlv_attr_put_null_string(u32 *msg, u16 attr_id,
       const unsigned char *string)
{
 u32 attr_data = 0, len = 0;
 u32 *attr;


 if (!string || !msg)
  return FM10K_ERR_PARAM;

 attr = &msg[FM10K_TLV_DWORD_LEN(*msg)];


 do {

  if (len && !(len % 4)) {
   attr[len / 4] = attr_data;
   attr_data = 0;
  }


  attr_data |= (u32)(*string) << (8 * (len % 4));
  len++;


 } while (*(string++));


 attr[(len + 3) / 4] = attr_data;


 len <<= FM10K_TLV_LEN_SHIFT;
 attr[0] = len | attr_id;


 len += FM10K_TLV_HDR_LEN << FM10K_TLV_LEN_SHIFT;
 *msg += FM10K_TLV_LEN_ALIGN(len);

 return 0;
}
