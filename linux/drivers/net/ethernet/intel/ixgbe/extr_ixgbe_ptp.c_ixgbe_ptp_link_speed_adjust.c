
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_adapter {int link_speed; } ;


 int IXGBE_INCVAL_100 ;
 int IXGBE_INCVAL_10GB ;
 int IXGBE_INCVAL_1GB ;
 int IXGBE_INCVAL_SHIFT_100 ;
 int IXGBE_INCVAL_SHIFT_10GB ;
 int IXGBE_INCVAL_SHIFT_1GB ;




__attribute__((used)) static void ixgbe_ptp_link_speed_adjust(struct ixgbe_adapter *adapter,
     u32 *shift, u32 *incval)
{
 switch (adapter->link_speed) {
 case 130:
  *shift = IXGBE_INCVAL_SHIFT_100;
  *incval = IXGBE_INCVAL_100;
  break;
 case 128:
  *shift = IXGBE_INCVAL_SHIFT_1GB;
  *incval = IXGBE_INCVAL_1GB;
  break;
 case 129:
 default:
  *shift = IXGBE_INCVAL_SHIFT_10GB;
  *incval = IXGBE_INCVAL_10GB;
  break;
 }
}
