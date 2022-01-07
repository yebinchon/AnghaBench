
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_tlv_attr {int id; int type; int len; } ;
typedef int s32 ;


 int ETH_ALEN ;
 int FM10K_ERR_PARAM ;
 int FM10K_NOT_IMPLEMENTED ;

 int FM10K_TLV_FLAGS_MSG ;
 int FM10K_TLV_FLAGS_SHIFT ;
 int FM10K_TLV_ID_MASK ;
 int FM10K_TLV_LEN_SHIFT ;







__attribute__((used)) static s32 fm10k_tlv_attr_validate(u32 *attr,
       const struct fm10k_tlv_attr *tlv_attr)
{
 u32 attr_id = *attr & FM10K_TLV_ID_MASK;
 u16 len = *attr >> FM10K_TLV_LEN_SHIFT;


 if (*attr & (FM10K_TLV_FLAGS_MSG << FM10K_TLV_FLAGS_SHIFT))
  return FM10K_ERR_PARAM;


 while (tlv_attr->id < attr_id)
  tlv_attr++;


 if (tlv_attr->id != attr_id)
  return FM10K_NOT_IMPLEMENTED;


 attr++;

 switch (tlv_attr->type) {
 case 130:
  if (!len ||
      (attr[(len - 1) / 4] & (0xFF << (8 * ((len - 1) % 4)))))
   return FM10K_ERR_PARAM;
  if (len > tlv_attr->len)
   return FM10K_ERR_PARAM;
  break;
 case 132:
  if (len != ETH_ALEN)
   return FM10K_ERR_PARAM;
  break;
 case 134:
  if (len)
   return FM10K_ERR_PARAM;
  break;
 case 128:
 case 129:
  if (len != tlv_attr->len)
   return FM10K_ERR_PARAM;
  break;
 case 133:

  if ((len % 4) || len != tlv_attr->len)
   return FM10K_ERR_PARAM;
  break;
 case 131:

  if (len % 4)
   return FM10K_ERR_PARAM;
  break;
 default:

  return FM10K_ERR_PARAM;
 }

 return 0;
}
