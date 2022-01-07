
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int (* write_posted ) (struct ixgbe_hw*,int*,int) ;int (* read_posted ) (struct ixgbe_hw*,int*,int) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int type; } ;
struct ixgbe_hw {int api_version; TYPE_3__ mbx; TYPE_1__ mac; } ;


 int EOPNOTSUPP ;
 int EPERM ;
 int IXGBEVF_82599_RETA_SIZE ;
 int IXGBE_ERR_MBX ;
 int IXGBE_VFMAILBOX_SIZE ;
 int IXGBE_VF_GET_RETA ;
 int IXGBE_VT_MSGTYPE_ACK ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int IXGBE_VT_MSGTYPE_NACK ;
 int ixgbe_mac_X550_vf ;



 int stub1 (struct ixgbe_hw*,int*,int) ;
 int stub2 (struct ixgbe_hw*,int*,int) ;

int ixgbevf_get_reta_locked(struct ixgbe_hw *hw, u32 *reta, int num_rx_queues)
{
 int err, i, j;
 u32 msgbuf[IXGBE_VFMAILBOX_SIZE];
 u32 *hw_reta = &msgbuf[1];
 u32 mask = 0;






 int dwords = IXGBEVF_82599_RETA_SIZE / 16;





 switch (hw->api_version) {
 case 128:
 case 129:
 case 130:
  if (hw->mac.type < ixgbe_mac_X550_vf)
   break;

 default:
  return -EOPNOTSUPP;
 }

 msgbuf[0] = IXGBE_VF_GET_RETA;

 err = hw->mbx.ops.write_posted(hw, msgbuf, 1);

 if (err)
  return err;

 err = hw->mbx.ops.read_posted(hw, msgbuf, dwords + 1);

 if (err)
  return err;

 msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;


 if (msgbuf[0] == (IXGBE_VF_GET_RETA | IXGBE_VT_MSGTYPE_NACK))
  return -EPERM;





 if (msgbuf[0] != (IXGBE_VF_GET_RETA | IXGBE_VT_MSGTYPE_ACK))
  return IXGBE_ERR_MBX;


 if (num_rx_queues > 1)
  mask = 0x1;

 for (i = 0; i < dwords; i++)
  for (j = 0; j < 16; j++)
   reta[i * 16 + j] = (hw_reta[i] >> (2 * j)) & mask;

 return 0;
}
