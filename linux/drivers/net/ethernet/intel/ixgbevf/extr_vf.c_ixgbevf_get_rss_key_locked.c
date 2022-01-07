
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int (* write_posted ) (struct ixgbe_hw*,int*,int) ;int (* read_posted ) (struct ixgbe_hw*,int*,int) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct TYPE_6__ {int type; } ;
struct ixgbe_hw {int api_version; TYPE_2__ mbx; TYPE_3__ mac; } ;


 int EOPNOTSUPP ;
 int EPERM ;
 int IXGBEVF_RSS_HASH_KEY_SIZE ;
 int IXGBE_ERR_MBX ;
 int IXGBE_VFMAILBOX_SIZE ;
 int IXGBE_VF_GET_RSS_KEY ;
 int IXGBE_VT_MSGTYPE_ACK ;
 int IXGBE_VT_MSGTYPE_CTS ;
 int IXGBE_VT_MSGTYPE_NACK ;
 int ixgbe_mac_X550_vf ;



 int memcpy (int *,int*,int ) ;
 int stub1 (struct ixgbe_hw*,int*,int) ;
 int stub2 (struct ixgbe_hw*,int*,int) ;

int ixgbevf_get_rss_key_locked(struct ixgbe_hw *hw, u8 *rss_key)
{
 int err;
 u32 msgbuf[IXGBE_VFMAILBOX_SIZE];







 switch (hw->api_version) {
 case 128:
 case 129:
 case 130:
  if (hw->mac.type < ixgbe_mac_X550_vf)
   break;

 default:
  return -EOPNOTSUPP;
 }

 msgbuf[0] = IXGBE_VF_GET_RSS_KEY;
 err = hw->mbx.ops.write_posted(hw, msgbuf, 1);

 if (err)
  return err;

 err = hw->mbx.ops.read_posted(hw, msgbuf, 11);

 if (err)
  return err;

 msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;


 if (msgbuf[0] == (IXGBE_VF_GET_RSS_KEY | IXGBE_VT_MSGTYPE_NACK))
  return -EPERM;





 if (msgbuf[0] != (IXGBE_VF_GET_RSS_KEY | IXGBE_VT_MSGTYPE_ACK))
  return IXGBE_ERR_MBX;

 memcpy(rss_key, msgbuf + 1, IXGBEVF_RSS_HASH_KEY_SIZE);

 return 0;
}
