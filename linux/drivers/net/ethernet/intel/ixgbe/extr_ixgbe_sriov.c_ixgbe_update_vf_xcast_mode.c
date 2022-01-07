
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_2__* vfinfo; struct ixgbe_hw hw; } ;
struct TYPE_4__ {int vf_api; int xcast_mode; int trusted; } ;


 int EOPNOTSUPP ;
 int EPERM ;




 int IXGBE_FCTRL ;
 size_t IXGBE_FCTRL_UPE ;
 size_t IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VMOLR (size_t) ;
 size_t IXGBE_VMOLR_BAM ;
 size_t IXGBE_VMOLR_MPE ;
 size_t IXGBE_VMOLR_ROMPE ;
 size_t IXGBE_VMOLR_UPE ;
 size_t IXGBE_VMOLR_VPE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,size_t) ;
 int drv ;
 int e_warn (int ,char*) ;
 int ixgbe_mac_82599EB ;




__attribute__((used)) static int ixgbe_update_vf_xcast_mode(struct ixgbe_adapter *adapter,
          u32 *msgbuf, u32 vf)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int xcast_mode = msgbuf[1];
 u32 vmolr, fctrl, disable, enable;


 switch (adapter->vfinfo[vf].vf_api) {
 case 130:

  if (xcast_mode == 131)
   return -EOPNOTSUPP;

 case 129:
 case 128:
  break;
 default:
  return -EOPNOTSUPP;
 }

 if (xcast_mode > 133 &&
     !adapter->vfinfo[vf].trusted) {
  xcast_mode = 133;
 }

 if (adapter->vfinfo[vf].xcast_mode == xcast_mode)
  goto out;

 switch (xcast_mode) {
 case 132:
  disable = IXGBE_VMOLR_BAM | IXGBE_VMOLR_ROMPE |
     IXGBE_VMOLR_MPE | IXGBE_VMOLR_UPE | IXGBE_VMOLR_VPE;
  enable = 0;
  break;
 case 133:
  disable = IXGBE_VMOLR_MPE | IXGBE_VMOLR_UPE | IXGBE_VMOLR_VPE;
  enable = IXGBE_VMOLR_BAM | IXGBE_VMOLR_ROMPE;
  break;
 case 134:
  disable = IXGBE_VMOLR_UPE | IXGBE_VMOLR_VPE;
  enable = IXGBE_VMOLR_BAM | IXGBE_VMOLR_ROMPE | IXGBE_VMOLR_MPE;
  break;
 case 131:
  if (hw->mac.type <= ixgbe_mac_82599EB)
   return -EOPNOTSUPP;

  fctrl = IXGBE_READ_REG(hw, IXGBE_FCTRL);
  if (!(fctrl & IXGBE_FCTRL_UPE)) {

   e_warn(drv,
          "Enabling VF promisc requires PF in promisc\n");
   return -EPERM;
  }

  disable = 0;
  enable = IXGBE_VMOLR_BAM | IXGBE_VMOLR_ROMPE |
    IXGBE_VMOLR_MPE | IXGBE_VMOLR_UPE | IXGBE_VMOLR_VPE;
  break;
 default:
  return -EOPNOTSUPP;
 }

 vmolr = IXGBE_READ_REG(hw, IXGBE_VMOLR(vf));
 vmolr &= ~disable;
 vmolr |= enable;
 IXGBE_WRITE_REG(hw, IXGBE_VMOLR(vf), vmolr);

 adapter->vfinfo[vf].xcast_mode = xcast_mode;

out:
 msgbuf[1] = xcast_mode;

 return 0;
}
