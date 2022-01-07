
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef size_t u16 ;
struct fm10k_tlv_attr {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ FM10K_ERR_PARAM ;
 scalar_t__ FM10K_NOT_IMPLEMENTED ;
 size_t FM10K_TLV_DWORD_LEN (size_t) ;
 size_t FM10K_TLV_ID_MASK ;
 size_t FM10K_TLV_LEN_SHIFT ;
 size_t FM10K_TLV_RESULTS_MAX ;
 scalar_t__ fm10k_tlv_attr_validate (size_t*,struct fm10k_tlv_attr const*) ;

__attribute__((used)) static s32 fm10k_tlv_attr_parse(u32 *attr, u32 **results,
    const struct fm10k_tlv_attr *tlv_attr)
{
 u32 i, attr_id, offset = 0;
 s32 err;
 u16 len;


 if (!attr || !results)
  return FM10K_ERR_PARAM;


 for (i = 0; i < FM10K_TLV_RESULTS_MAX; i++)
  results[i] = ((void*)0);


 len = *attr >> FM10K_TLV_LEN_SHIFT;


 if (!len)
  return 0;


 if (!tlv_attr) {
  results[0] = attr;
  return 0;
 }


 attr++;


 while (offset < len) {
  attr_id = *attr & FM10K_TLV_ID_MASK;

  if (attr_id >= FM10K_TLV_RESULTS_MAX)
   return FM10K_NOT_IMPLEMENTED;

  err = fm10k_tlv_attr_validate(attr, tlv_attr);
  if (err == FM10K_NOT_IMPLEMENTED)
   ;
  else if (err)
   return err;
  else
   results[attr_id] = attr;


  offset += FM10K_TLV_DWORD_LEN(*attr) * 4;


  attr = &attr[FM10K_TLV_DWORD_LEN(*attr)];
 }


 if (offset != len)
  return FM10K_ERR_PARAM;

 return 0;
}
