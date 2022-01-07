
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int C_CAN_MSG_OBJ_RX_FIRST ;
 int C_CAN_MSG_OBJ_RX_LAST ;
 int C_CAN_NO_OF_OBJECTS ;
 int IF_MCONT_RCV ;
 int IF_MCONT_RCV_EOB ;
 int IF_RX ;
 int c_can_inval_msg_object (struct net_device*,int ,int) ;
 int c_can_setup_receive_object (struct net_device*,int ,int,int ,int ,int ) ;

__attribute__((used)) static void c_can_configure_msg_objects(struct net_device *dev)
{
 int i;


 for (i = C_CAN_MSG_OBJ_RX_FIRST; i <= C_CAN_NO_OF_OBJECTS; i++)
  c_can_inval_msg_object(dev, IF_RX, i);


 for (i = C_CAN_MSG_OBJ_RX_FIRST; i < C_CAN_MSG_OBJ_RX_LAST; i++)
  c_can_setup_receive_object(dev, IF_RX, i, 0, 0, IF_MCONT_RCV);

 c_can_setup_receive_object(dev, IF_RX, C_CAN_MSG_OBJ_RX_LAST, 0, 0,
       IF_MCONT_RCV_EOB);
}
