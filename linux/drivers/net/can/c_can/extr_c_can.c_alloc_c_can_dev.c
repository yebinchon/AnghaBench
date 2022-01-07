
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int ctrlmode_supported; int do_get_berr_counter; int do_set_mode; int * bittiming_const; } ;
struct c_can_priv {TYPE_1__ can; struct net_device* dev; int napi; } ;


 int CAN_CTRLMODE_BERR_REPORTING ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int C_CAN_MSG_OBJ_TX_NUM ;
 int C_CAN_NAPI_WEIGHT ;
 struct net_device* alloc_candev (int,int ) ;
 int c_can_bittiming_const ;
 int c_can_get_berr_counter ;
 int c_can_poll ;
 int c_can_set_mode ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;

struct net_device *alloc_c_can_dev(void)
{
 struct net_device *dev;
 struct c_can_priv *priv;

 dev = alloc_candev(sizeof(struct c_can_priv), C_CAN_MSG_OBJ_TX_NUM);
 if (!dev)
  return ((void*)0);

 priv = netdev_priv(dev);
 netif_napi_add(dev, &priv->napi, c_can_poll, C_CAN_NAPI_WEIGHT);

 priv->dev = dev;
 priv->can.bittiming_const = &c_can_bittiming_const;
 priv->can.do_set_mode = c_can_set_mode;
 priv->can.do_get_berr_counter = c_can_get_berr_counter;
 priv->can.ctrlmode_supported = CAN_CTRLMODE_LOOPBACK |
     CAN_CTRLMODE_LISTENONLY |
     CAN_CTRLMODE_BERR_REPORTING;

 return dev;
}
