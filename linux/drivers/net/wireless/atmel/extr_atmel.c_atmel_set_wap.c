
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sockaddr {scalar_t__ sa_family; int sa_data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct atmel_private {int BSS_list_entries; int irqlock; int management_timer; TYPE_1__* BSSinfo; scalar_t__ wep_is_on; } ;
struct TYPE_2__ {int const* BSSID; scalar_t__ UsingWEP; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EINVAL ;
 int atmel_join_bss (struct atmel_private*,int) ;
 int atmel_scan (struct atmel_private*,int) ;
 int del_timer_sync (int *) ;
 scalar_t__ memcmp (int const*,int ,int) ;
 struct atmel_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int atmel_set_wap(struct net_device *dev,
    struct iw_request_info *info,
    struct sockaddr *awrq,
    char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);
 int i;
 static const u8 any[] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
 static const u8 off[] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
 unsigned long flags;

 if (awrq->sa_family != ARPHRD_ETHER)
  return -EINVAL;

 if (!memcmp(any, awrq->sa_data, 6) ||
     !memcmp(off, awrq->sa_data, 6)) {
  del_timer_sync(&priv->management_timer);
  spin_lock_irqsave(&priv->irqlock, flags);
  atmel_scan(priv, 1);
  spin_unlock_irqrestore(&priv->irqlock, flags);
  return 0;
 }

 for (i = 0; i < priv->BSS_list_entries; i++) {
  if (memcmp(priv->BSSinfo[i].BSSID, awrq->sa_data, 6) == 0) {
   if (!priv->wep_is_on && priv->BSSinfo[i].UsingWEP) {
    return -EINVAL;
   } else if (priv->wep_is_on && !priv->BSSinfo[i].UsingWEP) {
    return -EINVAL;
   } else {
    del_timer_sync(&priv->management_timer);
    spin_lock_irqsave(&priv->irqlock, flags);
    atmel_join_bss(priv, i);
    spin_unlock_irqrestore(&priv->irqlock, flags);
    return 0;
   }
  }
 }

 return -EINVAL;
}
