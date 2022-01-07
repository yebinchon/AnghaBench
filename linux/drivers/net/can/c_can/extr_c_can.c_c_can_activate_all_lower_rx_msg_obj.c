
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int C_CAN_MSG_OBJ_RX_FIRST ;
 int C_CAN_MSG_RX_LOW_LAST ;
 int IF_COMM_CLR_NEWDAT ;
 int c_can_object_get (struct net_device*,int,int,int ) ;

__attribute__((used)) static inline void c_can_activate_all_lower_rx_msg_obj(struct net_device *dev,
             int iface)
{
 int i;

 for (i = C_CAN_MSG_OBJ_RX_FIRST; i <= C_CAN_MSG_RX_LOW_LAST; i++)
  c_can_object_get(dev, iface, i, IF_COMM_CLR_NEWDAT);
}
