
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int dev; scalar_t__ is_deep_sleep; int ds_awake_q; } ;


 int HZ ;
 int netdev_err (int ,char*) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int lbs_wait_for_ds_awake(struct lbs_private *priv)
{
 int ret = 0;

 if (priv->is_deep_sleep) {
  if (!wait_event_interruptible_timeout(priv->ds_awake_q,
     !priv->is_deep_sleep, (10 * HZ))) {
   netdev_err(priv->dev, "ds_awake_q: timer expired\n");
   ret = -1;
  }
 }

 return ret;
}
