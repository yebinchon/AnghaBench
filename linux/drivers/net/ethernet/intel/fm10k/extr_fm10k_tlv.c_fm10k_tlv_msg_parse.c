
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fm10k_msg_data {int id; scalar_t__ (* func ) (struct fm10k_hw*,int**,struct fm10k_mbx_info*) ;int attr; } ;
struct fm10k_mbx_info {int dummy; } ;
struct fm10k_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ FM10K_ERR_PARAM ;
 int FM10K_TLV_ERROR ;
 int FM10K_TLV_FLAGS_MSG ;
 int FM10K_TLV_FLAGS_SHIFT ;
 int FM10K_TLV_ID_MASK ;
 int FM10K_TLV_RESULTS_MAX ;
 scalar_t__ fm10k_tlv_attr_parse (int*,int**,int ) ;
 scalar_t__ stub1 (struct fm10k_hw*,int**,struct fm10k_mbx_info*) ;

s32 fm10k_tlv_msg_parse(struct fm10k_hw *hw, u32 *msg,
   struct fm10k_mbx_info *mbx,
   const struct fm10k_msg_data *data)
{
 u32 *results[FM10K_TLV_RESULTS_MAX];
 u32 msg_id;
 s32 err;


 if (!msg || !data)
  return FM10K_ERR_PARAM;


 if (!(*msg & (FM10K_TLV_FLAGS_MSG << FM10K_TLV_FLAGS_SHIFT)))
  return FM10K_ERR_PARAM;


 msg_id = *msg & FM10K_TLV_ID_MASK;

 while (data->id < msg_id)
  data++;


 if (data->id != msg_id) {
  while (data->id != FM10K_TLV_ERROR)
   data++;
 }


 err = fm10k_tlv_attr_parse(msg, results, data->attr);
 if (err < 0)
  return err;

 return data->func(hw, results, mbx);
}
