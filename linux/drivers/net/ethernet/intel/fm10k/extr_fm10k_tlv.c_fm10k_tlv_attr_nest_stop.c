
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int FM10K_ERR_PARAM ;
 size_t FM10K_TLV_DWORD_LEN (int) ;
 int FM10K_TLV_HDR_LEN ;
 int FM10K_TLV_LEN_SHIFT ;

__attribute__((used)) static s32 fm10k_tlv_attr_nest_stop(u32 *msg)
{
 u32 *attr;
 u32 len;


 if (!msg)
  return FM10K_ERR_PARAM;


 attr = &msg[FM10K_TLV_DWORD_LEN(*msg)];
 len = (attr[0] >> FM10K_TLV_LEN_SHIFT) << FM10K_TLV_LEN_SHIFT;


 if (len) {
  len += FM10K_TLV_HDR_LEN << FM10K_TLV_LEN_SHIFT;
  *msg += len;
 }

 return 0;
}
