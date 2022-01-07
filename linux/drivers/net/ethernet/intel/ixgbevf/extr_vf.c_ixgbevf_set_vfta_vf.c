
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ IXGBE_ERR_INVALID_ARGUMENT ;
 int IXGBE_VF_SET_VLAN ;
 int IXGBE_VT_MSGINFO_SHIFT ;
 int IXGBE_VT_MSGTYPE_ACK ;
 int IXGBE_VT_MSGTYPE_CTS ;
 scalar_t__ ixgbevf_write_msg_read_ack (struct ixgbe_hw*,int*,int*,int ) ;

__attribute__((used)) static s32 ixgbevf_set_vfta_vf(struct ixgbe_hw *hw, u32 vlan, u32 vind,
          bool vlan_on)
{
 u32 msgbuf[2];
 s32 err;

 msgbuf[0] = IXGBE_VF_SET_VLAN;
 msgbuf[1] = vlan;

 msgbuf[0] |= vlan_on << IXGBE_VT_MSGINFO_SHIFT;

 err = ixgbevf_write_msg_read_ack(hw, msgbuf, msgbuf,
      ARRAY_SIZE(msgbuf));
 if (err)
  goto mbx_err;


 msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;
 msgbuf[0] &= ~(0xFF << IXGBE_VT_MSGINFO_SHIFT);

 if (msgbuf[0] != (IXGBE_VF_SET_VLAN | IXGBE_VT_MSGTYPE_ACK))
  err = IXGBE_ERR_INVALID_ARGUMENT;

mbx_err:
 return err;
}
