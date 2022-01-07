
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int ) ;
 int FM10K_TEST_MSG_LE_STRUCT ;
 int FM10K_TEST_MSG_MAC_ADDR ;
 int FM10K_TEST_MSG_S16 ;
 int FM10K_TEST_MSG_S32 ;
 int FM10K_TEST_MSG_S64 ;
 int FM10K_TEST_MSG_S8 ;
 int FM10K_TEST_MSG_STRING ;
 int FM10K_TEST_MSG_U16 ;
 int FM10K_TEST_MSG_U32 ;
 int FM10K_TEST_MSG_U64 ;
 int FM10K_TEST_MSG_U8 ;
 int fm10k_tlv_attr_put_le_struct (int*,int ,int ,int) ;
 int fm10k_tlv_attr_put_mac_vlan (int*,int ,int ,int ) ;
 int fm10k_tlv_attr_put_null_string (int*,int ,int ) ;
 int fm10k_tlv_attr_put_s16 (int*,int ,int ) ;
 int fm10k_tlv_attr_put_s32 (int*,int ,int ) ;
 int fm10k_tlv_attr_put_s64 (int*,int ,int ) ;
 int fm10k_tlv_attr_put_s8 (int*,int ,int ) ;
 int fm10k_tlv_attr_put_u16 (int*,int ,int ) ;
 int fm10k_tlv_attr_put_u32 (int*,int ,int ) ;
 int fm10k_tlv_attr_put_u64 (int*,int ,int ) ;
 int fm10k_tlv_attr_put_u8 (int*,int ,int ) ;
 int test_le ;
 int test_mac ;
 int test_s16 ;
 int test_s32 ;
 int test_s64 ;
 int test_s8 ;
 int test_str ;
 int test_u16 ;
 int test_u32 ;
 int test_u64 ;
 int test_u8 ;
 int test_vlan ;

__attribute__((used)) static void fm10k_tlv_msg_test_generate_data(u32 *msg, u32 attr_flags)
{
 if (attr_flags & BIT(FM10K_TEST_MSG_STRING))
  fm10k_tlv_attr_put_null_string(msg, FM10K_TEST_MSG_STRING,
            test_str);
 if (attr_flags & BIT(FM10K_TEST_MSG_MAC_ADDR))
  fm10k_tlv_attr_put_mac_vlan(msg, FM10K_TEST_MSG_MAC_ADDR,
         test_mac, test_vlan);
 if (attr_flags & BIT(FM10K_TEST_MSG_U8))
  fm10k_tlv_attr_put_u8(msg, FM10K_TEST_MSG_U8, test_u8);
 if (attr_flags & BIT(FM10K_TEST_MSG_U16))
  fm10k_tlv_attr_put_u16(msg, FM10K_TEST_MSG_U16, test_u16);
 if (attr_flags & BIT(FM10K_TEST_MSG_U32))
  fm10k_tlv_attr_put_u32(msg, FM10K_TEST_MSG_U32, test_u32);
 if (attr_flags & BIT(FM10K_TEST_MSG_U64))
  fm10k_tlv_attr_put_u64(msg, FM10K_TEST_MSG_U64, test_u64);
 if (attr_flags & BIT(FM10K_TEST_MSG_S8))
  fm10k_tlv_attr_put_s8(msg, FM10K_TEST_MSG_S8, test_s8);
 if (attr_flags & BIT(FM10K_TEST_MSG_S16))
  fm10k_tlv_attr_put_s16(msg, FM10K_TEST_MSG_S16, test_s16);
 if (attr_flags & BIT(FM10K_TEST_MSG_S32))
  fm10k_tlv_attr_put_s32(msg, FM10K_TEST_MSG_S32, test_s32);
 if (attr_flags & BIT(FM10K_TEST_MSG_S64))
  fm10k_tlv_attr_put_s64(msg, FM10K_TEST_MSG_S64, test_s64);
 if (attr_flags & BIT(FM10K_TEST_MSG_LE_STRUCT))
  fm10k_tlv_attr_put_le_struct(msg, FM10K_TEST_MSG_LE_STRUCT,
          test_le, 8);
}
