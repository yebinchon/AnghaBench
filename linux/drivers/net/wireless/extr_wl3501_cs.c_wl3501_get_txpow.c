
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; scalar_t__ fixed; scalar_t__ disabled; int value; } ;
union iwreq_data {TYPE_1__ txpower; } ;
typedef int u16 ;
typedef int txpow ;
struct wl3501_card {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int IW_TXPOW_MWATT ;
 int WL3501_MIB_ATTR_CURRENT_TX_PWR_LEVEL ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int wl3501_get_mib_value (struct wl3501_card*,int ,int *,int) ;

__attribute__((used)) static int wl3501_get_txpow(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 u16 txpow;
 struct wl3501_card *this = netdev_priv(dev);
 int rc = wl3501_get_mib_value(this,
          WL3501_MIB_ATTR_CURRENT_TX_PWR_LEVEL,
          &txpow, sizeof(txpow));
 if (!rc) {
  wrqu->txpower.value = txpow;
  wrqu->txpower.disabled = 0;




  wrqu->txpower.fixed = 0;
  wrqu->txpower.flags = IW_TXPOW_MWATT;
 }
 return rc;
}
