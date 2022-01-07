
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_7__ {scalar_t__ updated; } ;
struct iw_statistics {TYPE_2__ qual; } ;
struct TYPE_6__ {scalar_t__ updated; } ;
struct TYPE_9__ {TYPE_1__ qual; } ;
struct TYPE_8__ {scalar_t__ stats_timestamp; struct iw_statistics iwstatistics; int stats_work; int stats_lock; TYPE_5__ local_iwstatistics; } ;
typedef TYPE_3__ islpci_private ;


 int HZ ;
 scalar_t__ jiffies ;
 int memcpy (struct iw_statistics*,TYPE_5__*,int) ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_3__* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

struct iw_statistics *
prism54_get_wireless_stats(struct net_device *ndev)
{
 islpci_private *priv = netdev_priv(ndev);


 if (mutex_trylock(&priv->stats_lock)) {
  memcpy(&priv->iwstatistics, &priv->local_iwstatistics,
         sizeof (struct iw_statistics));

  priv->local_iwstatistics.qual.updated = 0;
  mutex_unlock(&priv->stats_lock);
 } else
  priv->iwstatistics.qual.updated = 0;



 if ((priv->stats_timestamp == 0) ||
     time_after(jiffies, priv->stats_timestamp + 1 * HZ)) {
  schedule_work(&priv->stats_work);
  priv->stats_timestamp = jiffies;
 }

 return &priv->iwstatistics;
}
