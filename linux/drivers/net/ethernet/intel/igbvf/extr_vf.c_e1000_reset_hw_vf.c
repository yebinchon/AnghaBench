
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int (* read_posted ) (struct e1000_hw*,int*,int) ;int (* write_posted ) (struct e1000_hw*,int*,int) ;int (* check_for_rst ) (struct e1000_hw*) ;} ;
struct e1000_mbx_info {TYPE_1__ ops; int timeout; } ;
struct TYPE_4__ {int perm_addr; } ;
struct e1000_hw {TYPE_2__ mac; struct e1000_mbx_info mbx; } ;
typedef int s32 ;


 int CTRL ;
 int E1000_CTRL_RST ;
 int E1000_ERR_MAC_INIT ;
 int E1000_VF_INIT_TIMEOUT ;
 int E1000_VF_MBX_INIT_TIMEOUT ;
 int E1000_VF_RESET ;
 int E1000_VT_MSGTYPE_ACK ;
 int ETH_ALEN ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int mdelay (int) ;
 int memcpy (int ,int *,int ) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*,int*,int) ;
 int stub3 (struct e1000_hw*,int*,int) ;
 int udelay (int) ;

__attribute__((used)) static s32 e1000_reset_hw_vf(struct e1000_hw *hw)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 u32 timeout = E1000_VF_INIT_TIMEOUT;
 u32 ret_val = -E1000_ERR_MAC_INIT;
 u32 msgbuf[3];
 u8 *addr = (u8 *)(&msgbuf[1]);
 u32 ctrl;


 ctrl = er32(CTRL);
 ew32(CTRL, ctrl | E1000_CTRL_RST);


 while (!mbx->ops.check_for_rst(hw) && timeout) {
  timeout--;
  udelay(5);
 }

 if (timeout) {

  mbx->timeout = E1000_VF_MBX_INIT_TIMEOUT;


  msgbuf[0] = E1000_VF_RESET;
  mbx->ops.write_posted(hw, msgbuf, 1);

  mdelay(10);


  ret_val = mbx->ops.read_posted(hw, msgbuf, 3);
  if (!ret_val) {
   if (msgbuf[0] == (E1000_VF_RESET |
       E1000_VT_MSGTYPE_ACK))
    memcpy(hw->mac.perm_addr, addr, ETH_ALEN);
   else
    ret_val = -E1000_ERR_MAC_INIT;
  }
 }

 return ret_val;
}
