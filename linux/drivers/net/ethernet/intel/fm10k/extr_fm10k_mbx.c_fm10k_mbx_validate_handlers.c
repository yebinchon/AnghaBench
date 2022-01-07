
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_tlv_attr {unsigned int id; } ;
struct fm10k_msg_data {unsigned int id; int func; struct fm10k_tlv_attr* attr; } ;
typedef int s32 ;


 int FM10K_ERR_PARAM ;
 unsigned int FM10K_TLV_ERROR ;
 unsigned int FM10K_TLV_RESULTS_MAX ;

__attribute__((used)) static s32 fm10k_mbx_validate_handlers(const struct fm10k_msg_data *msg_data)
{
 const struct fm10k_tlv_attr *attr;
 unsigned int id;


 if (!msg_data)
  return 0;

 while (msg_data->id != FM10K_TLV_ERROR) {

  if (!msg_data->func)
   return FM10K_ERR_PARAM;


  attr = msg_data->attr;
  if (attr) {
   while (attr->id != FM10K_TLV_ERROR) {
    id = attr->id;
    attr++;

    if (id >= attr->id)
     return FM10K_ERR_PARAM;

    if (id >= FM10K_TLV_RESULTS_MAX)
     return FM10K_ERR_PARAM;
   }


   if (attr->id != FM10K_TLV_ERROR)
    return FM10K_ERR_PARAM;
  }

  id = msg_data->id;
  msg_data++;

  if (id >= msg_data->id)
   return FM10K_ERR_PARAM;
 }


 if ((msg_data->id != FM10K_TLV_ERROR) || !msg_data->func)
  return FM10K_ERR_PARAM;

 return 0;
}
