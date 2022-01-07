
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int addr; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;
typedef int msgbuf ;


 int ARRAY_SIZE (int*) ;
 int IXGBE_ERR_MBX ;
 int IXGBE_VF_SET_MAC_ADDR ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int IXGBE_VT_MSGTYPE_NACK ;
 int ether_addr_copy (int *,int *) ;
 int ixgbevf_get_mac_addr_vf (struct ixgbe_hw*,int ) ;
 int ixgbevf_write_msg_read_ack (struct ixgbe_hw*,int*,int*,int ) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static s32 ixgbevf_set_rar_vf(struct ixgbe_hw *hw, u32 index, u8 *addr,
         u32 vmdq)
{
 u32 msgbuf[3];
 u8 *msg_addr = (u8 *)(&msgbuf[1]);
 s32 ret_val;

 memset(msgbuf, 0, sizeof(msgbuf));
 msgbuf[0] = IXGBE_VF_SET_MAC_ADDR;
 ether_addr_copy(msg_addr, addr);

 ret_val = ixgbevf_write_msg_read_ack(hw, msgbuf, msgbuf,
          ARRAY_SIZE(msgbuf));
 msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;


 if (!ret_val &&
     (msgbuf[0] == (IXGBE_VF_SET_MAC_ADDR | IXGBE_VT_MSGTYPE_NACK))) {
  ixgbevf_get_mac_addr_vf(hw, hw->mac.addr);
  return IXGBE_ERR_MBX;
 }

 return ret_val;
}
