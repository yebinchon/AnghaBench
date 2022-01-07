
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrlmode_supported; int do_set_data_bittiming; int do_set_bittiming; int do_get_berr_counter; int do_set_mode; int * data_bittiming_const; int * bittiming_const; int state; } ;
struct peak_canfd_priv {int index; int echo_lock; scalar_t__ cmd_len; struct net_device* ndev; TYPE_1__ can; } ;
struct net_device {int dev_id; int * netdev_ops; int flags; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int CAN_CTRLMODE_BERR_REPORTING ;
 int CAN_CTRLMODE_FD ;
 int CAN_CTRLMODE_FD_NON_ISO ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int CAN_STATE_STOPPED ;
 int IFF_ECHO ;
 int PCANFD_ECHO_SKB_MAX ;
 struct net_device* alloc_candev (int,int) ;
 struct peak_canfd_priv* netdev_priv (struct net_device*) ;
 int peak_canfd_data_const ;
 int peak_canfd_get_berr_counter ;
 int peak_canfd_netdev_ops ;
 int peak_canfd_nominal_const ;
 int peak_canfd_set_bittiming ;
 int peak_canfd_set_data_bittiming ;
 int peak_canfd_set_mode ;
 int spin_lock_init (int *) ;

struct net_device *alloc_peak_canfd_dev(int sizeof_priv, int index,
     int echo_skb_max)
{
 struct net_device *ndev;
 struct peak_canfd_priv *priv;


 if (echo_skb_max < 0)
  echo_skb_max = PCANFD_ECHO_SKB_MAX;


 ndev = alloc_candev(sizeof_priv, echo_skb_max);
 if (!ndev)
  return ((void*)0);

 priv = netdev_priv(ndev);


 priv->can.state = CAN_STATE_STOPPED;
 priv->can.bittiming_const = &peak_canfd_nominal_const;
 priv->can.data_bittiming_const = &peak_canfd_data_const;

 priv->can.do_set_mode = peak_canfd_set_mode;
 priv->can.do_get_berr_counter = peak_canfd_get_berr_counter;
 priv->can.do_set_bittiming = peak_canfd_set_bittiming;
 priv->can.do_set_data_bittiming = peak_canfd_set_data_bittiming;
 priv->can.ctrlmode_supported = CAN_CTRLMODE_LOOPBACK |
           CAN_CTRLMODE_LISTENONLY |
           CAN_CTRLMODE_3_SAMPLES |
           CAN_CTRLMODE_FD |
           CAN_CTRLMODE_FD_NON_ISO |
           CAN_CTRLMODE_BERR_REPORTING;

 priv->ndev = ndev;
 priv->index = index;
 priv->cmd_len = 0;
 spin_lock_init(&priv->echo_lock);

 ndev->flags |= IFF_ECHO;
 ndev->netdev_ops = &peak_canfd_netdev_ops;
 ndev->dev_id = index;

 return ndev;
}
