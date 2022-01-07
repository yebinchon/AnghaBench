
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrlmode_supported; int do_get_berr_counter; int do_set_mode; int do_set_bittiming; int * bittiming_const; } ;
struct sja1000_priv {void* priv; int cmdreg_lock; TYPE_1__ can; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int CAN_CTRLMODE_BERR_REPORTING ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int CAN_CTRLMODE_ONE_SHOT ;
 int CAN_CTRLMODE_PRESUME_ACK ;
 int SJA1000_ECHO_SKB_MAX ;
 struct net_device* alloc_candev (int,int ) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int sja1000_bittiming_const ;
 int sja1000_get_berr_counter ;
 int sja1000_set_bittiming ;
 int sja1000_set_mode ;
 int spin_lock_init (int *) ;

struct net_device *alloc_sja1000dev(int sizeof_priv)
{
 struct net_device *dev;
 struct sja1000_priv *priv;

 dev = alloc_candev(sizeof(struct sja1000_priv) + sizeof_priv,
  SJA1000_ECHO_SKB_MAX);
 if (!dev)
  return ((void*)0);

 priv = netdev_priv(dev);

 priv->dev = dev;
 priv->can.bittiming_const = &sja1000_bittiming_const;
 priv->can.do_set_bittiming = sja1000_set_bittiming;
 priv->can.do_set_mode = sja1000_set_mode;
 priv->can.do_get_berr_counter = sja1000_get_berr_counter;
 priv->can.ctrlmode_supported = CAN_CTRLMODE_LOOPBACK |
           CAN_CTRLMODE_LISTENONLY |
           CAN_CTRLMODE_3_SAMPLES |
           CAN_CTRLMODE_ONE_SHOT |
           CAN_CTRLMODE_BERR_REPORTING |
           CAN_CTRLMODE_PRESUME_ACK;

 spin_lock_init(&priv->cmdreg_lock);

 if (sizeof_priv)
  priv->priv = (void *)priv + sizeof(struct sja1000_priv);

 return dev;
}
