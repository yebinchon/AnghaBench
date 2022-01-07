
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FM10K_TEST_MSG_NESTED ;
 int FM10K_TLV_MSG_ID_TEST ;
 int* fm10k_tlv_attr_nest_start (int*,int) ;
 int fm10k_tlv_attr_nest_stop (int*) ;
 int fm10k_tlv_msg_init (int*,int ) ;
 int fm10k_tlv_msg_test_generate_data (int*,int) ;

void fm10k_tlv_msg_test_create(u32 *msg, u32 attr_flags)
{
 u32 *nest = ((void*)0);

 fm10k_tlv_msg_init(msg, FM10K_TLV_MSG_ID_TEST);

 fm10k_tlv_msg_test_generate_data(msg, attr_flags);


 attr_flags >>= FM10K_TEST_MSG_NESTED;

 if (attr_flags) {
  nest = fm10k_tlv_attr_nest_start(msg, FM10K_TEST_MSG_NESTED);

  fm10k_tlv_msg_test_generate_data(nest, attr_flags);

  fm10k_tlv_attr_nest_stop(msg);
 }
}
