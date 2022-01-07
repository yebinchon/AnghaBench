
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int s32 ;


 int FM10K_ERR_PARAM ;
 int FM10K_TLV_FLAGS_MSG ;
 int FM10K_TLV_FLAGS_SHIFT ;

s32 fm10k_tlv_msg_init(u32 *msg, u16 msg_id)
{

 if (!msg)
  return FM10K_ERR_PARAM;

 *msg = (FM10K_TLV_FLAGS_MSG << FM10K_TLV_FLAGS_SHIFT) | msg_id;

 return 0;
}
