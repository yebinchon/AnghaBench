
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;
typedef int msgbuf ;


 int ARRAY_SIZE (int*) ;
 int ENOMEM ;
 int IXGBE_VF_SET_MACVLAN ;
 int IXGBE_VT_MSGINFO_SHIFT ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int IXGBE_VT_MSGTYPE_NACK ;
 int ether_addr_copy (int *,int *) ;
 int ixgbevf_write_msg_read_ack (struct ixgbe_hw*,int*,int*,int ) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static s32 ixgbevf_set_uc_addr_vf(struct ixgbe_hw *hw, u32 index, u8 *addr)
{
 u32 msgbuf[3], msgbuf_chk;
 u8 *msg_addr = (u8 *)(&msgbuf[1]);
 s32 ret_val;

 memset(msgbuf, 0, sizeof(msgbuf));





 msgbuf[0] |= index << IXGBE_VT_MSGINFO_SHIFT;
 msgbuf[0] |= IXGBE_VF_SET_MACVLAN;
 msgbuf_chk = msgbuf[0];

 if (addr)
  ether_addr_copy(msg_addr, addr);

 ret_val = ixgbevf_write_msg_read_ack(hw, msgbuf, msgbuf,
          ARRAY_SIZE(msgbuf));
 if (!ret_val) {
  msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;

  if (msgbuf[0] == (msgbuf_chk | IXGBE_VT_MSGTYPE_NACK))
   return -ENOMEM;
 }

 return ret_val;
}
