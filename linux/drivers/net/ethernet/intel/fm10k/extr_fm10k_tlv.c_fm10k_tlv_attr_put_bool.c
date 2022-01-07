
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
 int FM10K_TLV_LEN_SHIFT ;

s32 fm10k_tlv_attr_put_bool(u32 *msg, u16 attr_id)
{

 if (!msg)
  return FM10K_ERR_PARAM;


 msg[FM10K_TLV_DWORD_LEN(*msg)] = attr_id;


 *msg += FM10K_TLV_HDR_LEN << FM10K_TLV_LEN_SHIFT;

 return 0;
}
