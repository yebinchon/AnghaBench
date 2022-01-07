
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {scalar_t__ iw_mode; int channel_mask; int channel; struct hermes hw; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {scalar_t__ e; int m; } ;
struct TYPE_2__ {int (* cmd_wait ) (struct hermes*,int,int,int *) ;} ;


 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 int HERMES_CMD_TEST ;
 int HERMES_TEST_SET_CHANNEL ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int NUM_CHANNELS ;
 int ieee80211_frequency_to_channel (int) ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;
 int stub1 (struct hermes*,int,int,int *) ;

__attribute__((used)) static int orinoco_ioctl_setfreq(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_freq *frq,
     char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 int chan = -1;
 unsigned long flags;
 int err = -EINPROGRESS;


 if (priv->iw_mode == NL80211_IFTYPE_STATION)
  return -EBUSY;

 if ((frq->e == 0) && (frq->m <= 1000)) {

  chan = frq->m;
 } else {

  int denom = 1;
  int i;


  for (i = 0; i < (6 - frq->e); i++)
   denom *= 10;

  chan = ieee80211_frequency_to_channel(frq->m / denom);
 }

 if ((chan < 1) || (chan > NUM_CHANNELS) ||
      !(priv->channel_mask & (1 << (chan - 1))))
  return -EINVAL;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 priv->channel = chan;
 if (priv->iw_mode == NL80211_IFTYPE_MONITOR) {

  struct hermes *hw = &priv->hw;
  err = hw->ops->cmd_wait(hw, HERMES_CMD_TEST |
         HERMES_TEST_SET_CHANNEL,
     chan, ((void*)0));
 }
 orinoco_unlock(priv, &flags);

 return err;
}
