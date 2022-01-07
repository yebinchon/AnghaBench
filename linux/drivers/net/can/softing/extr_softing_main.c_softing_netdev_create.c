
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int freq; } ;
struct TYPE_9__ {int ctrlmode_supported; int do_set_mode; TYPE_2__ clock; TYPE_5__* bittiming_const; } ;
struct TYPE_10__ {int sjw_max; int brp_max; } ;
struct softing_priv {TYPE_4__ can; int output; int chip; TYPE_5__ btr_const; struct softing* card; struct net_device* netdev; } ;
struct softing {TYPE_3__* pdev; TYPE_1__* pdat; } ;
struct net_device {int * netdev_ops; int flags; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {int max_sjw; int max_brp; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int IFF_ECHO ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int TX_ECHO_SKB_MAX ;
 struct net_device* alloc_candev (int,int ) ;
 int dev_alert (int *,char*) ;
 int memcpy (TYPE_5__*,int *,int) ;
 struct softing_priv* netdev_priv (struct net_device*) ;
 int softing_btr_const ;
 int softing_candev_set_mode ;
 int softing_default_output (struct net_device*) ;
 int softing_netdev_ops ;

__attribute__((used)) static struct net_device *softing_netdev_create(struct softing *card,
      uint16_t chip_id)
{
 struct net_device *netdev;
 struct softing_priv *priv;

 netdev = alloc_candev(sizeof(*priv), TX_ECHO_SKB_MAX);
 if (!netdev) {
  dev_alert(&card->pdev->dev, "alloc_candev failed\n");
  return ((void*)0);
 }
 priv = netdev_priv(netdev);
 priv->netdev = netdev;
 priv->card = card;
 memcpy(&priv->btr_const, &softing_btr_const, sizeof(priv->btr_const));
 priv->btr_const.brp_max = card->pdat->max_brp;
 priv->btr_const.sjw_max = card->pdat->max_sjw;
 priv->can.bittiming_const = &priv->btr_const;
 priv->can.clock.freq = 8000000;
 priv->chip = chip_id;
 priv->output = softing_default_output(netdev);
 SET_NETDEV_DEV(netdev, &card->pdev->dev);

 netdev->flags |= IFF_ECHO;
 netdev->netdev_ops = &softing_netdev_ops;
 priv->can.do_set_mode = softing_candev_set_mode;
 priv->can.ctrlmode_supported = CAN_CTRLMODE_3_SAMPLES;

 return netdev;
}
