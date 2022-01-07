
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int api_version; } ;


 int ARRAY_SIZE (int*) ;
 int IXGBE_ERR_INVALID_ARGUMENT ;
 int IXGBE_VF_API_NEGOTIATE ;
 int IXGBE_VT_MSGTYPE_ACK ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int ixgbevf_write_msg_read_ack (struct ixgbe_hw*,int*,int*,int ) ;

__attribute__((used)) static int ixgbevf_negotiate_api_version_vf(struct ixgbe_hw *hw, int api)
{
 int err;
 u32 msg[3];


 msg[0] = IXGBE_VF_API_NEGOTIATE;
 msg[1] = api;
 msg[2] = 0;

 err = ixgbevf_write_msg_read_ack(hw, msg, msg, ARRAY_SIZE(msg));
 if (!err) {
  msg[0] &= ~IXGBE_VT_MSGTYPE_CTS;


  if (msg[0] == (IXGBE_VF_API_NEGOTIATE | IXGBE_VT_MSGTYPE_ACK)) {
   hw->api_version = api;
   return 0;
  }

  err = IXGBE_ERR_INVALID_ARGUMENT;
 }

 return err;
}
