
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_msg_data {int dummy; } ;
struct fm10k_mbx_info {struct fm10k_msg_data const* msg_data; } ;
typedef int s32 ;


 int FM10K_ERR_PARAM ;
 scalar_t__ fm10k_mbx_validate_handlers (struct fm10k_msg_data const*) ;

__attribute__((used)) static s32 fm10k_mbx_register_handlers(struct fm10k_mbx_info *mbx,
           const struct fm10k_msg_data *msg_data)
{

 if (fm10k_mbx_validate_handlers(msg_data))
  return FM10K_ERR_PARAM;


 mbx->msg_data = msg_data;

 return 0;
}
