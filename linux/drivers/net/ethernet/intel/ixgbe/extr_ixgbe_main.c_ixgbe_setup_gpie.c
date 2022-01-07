
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int type; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags; int flags2; struct ixgbe_hw hw; TYPE_1__* ring_feature; } ;
struct TYPE_3__ {int mask; } ;




 int IXGBE_EIAM ;
 int IXGBE_EIAM_EX (int) ;
 int IXGBE_EICS_RTX_QUEUE ;
 int IXGBE_FLAG2_TEMP_SENSOR_CAPABLE ;
 int IXGBE_FLAG_FAN_FAIL_CAPABLE ;
 int IXGBE_FLAG_MSIX_ENABLED ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 int IXGBE_GPIE ;
 int IXGBE_GPIE_EIAME ;
 int IXGBE_GPIE_MSIX_MODE ;
 int IXGBE_GPIE_OCD ;
 int IXGBE_GPIE_PBA_SUPPORT ;
 int IXGBE_GPIE_VTMODE_16 ;
 int IXGBE_GPIE_VTMODE_32 ;
 int IXGBE_GPIE_VTMODE_64 ;
 int IXGBE_GPIE_VTMODE_MASK ;
 int IXGBE_SDP0_GPIEN_8259X ;
 int IXGBE_SDP0_GPIEN_X540 ;
 int IXGBE_SDP1_GPIEN (struct ixgbe_hw*) ;
 int IXGBE_SDP1_GPIEN_8259X ;
 int IXGBE_SDP2_GPIEN_8259X ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 size_t RING_F_VMDQ ;







__attribute__((used)) static void ixgbe_setup_gpie(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 gpie = 0;

 if (adapter->flags & IXGBE_FLAG_MSIX_ENABLED) {
  gpie = IXGBE_GPIE_MSIX_MODE | IXGBE_GPIE_PBA_SUPPORT |
         IXGBE_GPIE_OCD;
  gpie |= IXGBE_GPIE_EIAME;




  switch (hw->mac.type) {
  case 133:
   IXGBE_WRITE_REG(hw, IXGBE_EIAM, IXGBE_EICS_RTX_QUEUE);
   break;
  case 132:
  case 131:
  case 130:
  case 129:
  case 128:
  default:
   IXGBE_WRITE_REG(hw, IXGBE_EIAM_EX(0), 0xFFFFFFFF);
   IXGBE_WRITE_REG(hw, IXGBE_EIAM_EX(1), 0xFFFFFFFF);
   break;
  }
 } else {


  IXGBE_WRITE_REG(hw, IXGBE_EIAM, IXGBE_EICS_RTX_QUEUE);
 }




 if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) {
  gpie &= ~IXGBE_GPIE_VTMODE_MASK;

  switch (adapter->ring_feature[RING_F_VMDQ].mask) {
  case 134:
   gpie |= IXGBE_GPIE_VTMODE_16;
   break;
  case 135:
   gpie |= IXGBE_GPIE_VTMODE_32;
   break;
  default:
   gpie |= IXGBE_GPIE_VTMODE_64;
   break;
  }
 }


 if (adapter->flags2 & IXGBE_FLAG2_TEMP_SENSOR_CAPABLE) {
  switch (adapter->hw.mac.type) {
  case 132:
   gpie |= IXGBE_SDP0_GPIEN_8259X;
   break;
  default:
   break;
  }
 }


 if (adapter->flags & IXGBE_FLAG_FAN_FAIL_CAPABLE)
  gpie |= IXGBE_SDP1_GPIEN(hw);

 switch (hw->mac.type) {
 case 132:
  gpie |= IXGBE_SDP1_GPIEN_8259X | IXGBE_SDP2_GPIEN_8259X;
  break;
 case 129:
 case 128:
  gpie |= IXGBE_SDP0_GPIEN_X540;
  break;
 default:
  break;
 }

 IXGBE_WRITE_REG(hw, IXGBE_GPIE, gpie);
}
