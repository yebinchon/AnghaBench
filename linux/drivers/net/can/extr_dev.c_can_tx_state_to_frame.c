
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int CAN_ERR_CRTL_ACTIVE ;
 int CAN_ERR_CRTL_TX_PASSIVE ;
 int CAN_ERR_CRTL_TX_WARNING ;




__attribute__((used)) static int can_tx_state_to_frame(struct net_device *dev, enum can_state state)
{
 switch (state) {
 case 130:
  return CAN_ERR_CRTL_ACTIVE;
 case 128:
  return CAN_ERR_CRTL_TX_WARNING;
 case 129:
  return CAN_ERR_CRTL_TX_PASSIVE;
 default:
  return 0;
 }
}
