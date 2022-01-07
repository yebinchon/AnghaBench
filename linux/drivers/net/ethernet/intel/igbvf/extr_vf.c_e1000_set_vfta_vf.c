
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int (* read_posted ) (struct e1000_hw*,int*,int) ;int (* write_posted ) (struct e1000_hw*,int*,int) ;} ;
struct e1000_mbx_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mbx_info mbx; } ;
typedef int s32 ;


 int BIT (int ) ;
 int E1000_ERR_MAC_INIT ;
 int E1000_VF_SET_VLAN ;
 int E1000_VT_MSGINFO_SHIFT ;
 int E1000_VT_MSGTYPE_CTS ;
 int E1000_VT_MSGTYPE_NACK ;
 int stub1 (struct e1000_hw*,int*,int) ;
 int stub2 (struct e1000_hw*,int*,int) ;

__attribute__((used)) static s32 e1000_set_vfta_vf(struct e1000_hw *hw, u16 vid, bool set)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 u32 msgbuf[2];
 s32 err;

 msgbuf[0] = E1000_VF_SET_VLAN;
 msgbuf[1] = vid;

 if (set)
  msgbuf[0] |= BIT(E1000_VT_MSGINFO_SHIFT);

 mbx->ops.write_posted(hw, msgbuf, 2);

 err = mbx->ops.read_posted(hw, msgbuf, 2);

 msgbuf[0] &= ~E1000_VT_MSGTYPE_CTS;


 if (!err && (msgbuf[0] == (E1000_VF_SET_VLAN | E1000_VT_MSGTYPE_NACK)))
  err = -E1000_ERR_MAC_INIT;

 return err;
}
