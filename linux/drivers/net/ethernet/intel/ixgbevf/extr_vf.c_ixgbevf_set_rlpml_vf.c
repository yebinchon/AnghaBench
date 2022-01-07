
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ IXGBE_ERR_MBX ;
 int IXGBE_VF_SET_LPE ;
 int IXGBE_VT_MSGTYPE_NACK ;
 scalar_t__ ixgbevf_write_msg_read_ack (struct ixgbe_hw*,int*,int*,int ) ;

__attribute__((used)) static s32 ixgbevf_set_rlpml_vf(struct ixgbe_hw *hw, u16 max_size)
{
 u32 msgbuf[2];
 s32 ret_val;

 msgbuf[0] = IXGBE_VF_SET_LPE;
 msgbuf[1] = max_size;

 ret_val = ixgbevf_write_msg_read_ack(hw, msgbuf, msgbuf,
          ARRAY_SIZE(msgbuf));
 if (ret_val)
  return ret_val;
 if ((msgbuf[0] & IXGBE_VF_SET_LPE) &&
     (msgbuf[0] & IXGBE_VT_MSGTYPE_NACK))
  return IXGBE_ERR_MBX;

 return 0;
}
