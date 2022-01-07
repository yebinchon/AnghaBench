
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int dummy; } ;
struct atmel_private {scalar_t__ station_state; scalar_t__ site_survey_state; int irqlock; scalar_t__ fast_scan; int management_timer; scalar_t__ last_survey; } ;


 int EAGAIN ;
 int EBUSY ;
 int HZ ;
 scalar_t__ SITE_SURVEY_IDLE ;
 scalar_t__ SITE_SURVEY_IN_PROGRESS ;
 scalar_t__ STATION_STATE_DOWN ;
 int atmel_scan (struct atmel_private*,int ) ;
 int del_timer_sync (int *) ;
 scalar_t__ jiffies ;
 struct atmel_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int atmel_set_scan(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_point *dwrq,
     char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);
 unsigned long flags;
 if (priv->station_state == STATION_STATE_DOWN)
  return -EAGAIN;


 if (time_after(jiffies, priv->last_survey + 20 * HZ))
  priv->site_survey_state = SITE_SURVEY_IDLE;
 priv->last_survey = jiffies;


 if (priv->site_survey_state == SITE_SURVEY_IN_PROGRESS)
  return -EBUSY;

 del_timer_sync(&priv->management_timer);
 spin_lock_irqsave(&priv->irqlock, flags);

 priv->site_survey_state = SITE_SURVEY_IN_PROGRESS;
 priv->fast_scan = 0;
 atmel_scan(priv, 0);
 spin_unlock_irqrestore(&priv->irqlock, flags);

 return 0;
}
