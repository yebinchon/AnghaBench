
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int value ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int misc; scalar_t__ retries; int code; } ;
struct iw_statistics {TYPE_1__ discard; int status; } ;
struct wl3501_card {struct iw_statistics wstats; } ;
struct net_device {int dummy; } ;


 int WL3501_MIB_ATTR_ACK_FAILURE_COUNT ;
 int WL3501_MIB_ATTR_FAILED_COUNT ;
 int WL3501_MIB_ATTR_FRAME_DUPLICATE_COUNT ;
 int WL3501_MIB_ATTR_RETRY_COUNT ;
 int WL3501_MIB_ATTR_RTS_FAILURE_COUNT ;
 int WL3501_MIB_ATTR_WEP_EXCLUDED_COUNT ;
 int WL3501_MIB_ATTR_WEP_ICV_ERROR_COUNT ;
 int WL3501_MIB_ATTR_WEP_UNDECRYPTABLE_COUNT ;
 int memset (struct iw_statistics*,int ,int) ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int wl3501_get_mib_value (struct wl3501_card*,int ,scalar_t__*,int) ;

__attribute__((used)) static struct iw_statistics *wl3501_get_wireless_stats(struct net_device *dev)
{
 struct wl3501_card *this = netdev_priv(dev);
 struct iw_statistics *wstats = &this->wstats;
 u32 value;

 memset(wstats, 0, sizeof(*wstats));
 wstats->status = netif_running(dev);
 if (!wl3501_get_mib_value(this, WL3501_MIB_ATTR_WEP_ICV_ERROR_COUNT,
      &value, sizeof(value)))
  wstats->discard.code += value;
 if (!wl3501_get_mib_value(this, WL3501_MIB_ATTR_WEP_UNDECRYPTABLE_COUNT,
      &value, sizeof(value)))
  wstats->discard.code += value;
 if (!wl3501_get_mib_value(this, WL3501_MIB_ATTR_WEP_EXCLUDED_COUNT,
      &value, sizeof(value)))
  wstats->discard.code += value;
 if (!wl3501_get_mib_value(this, WL3501_MIB_ATTR_RETRY_COUNT,
      &value, sizeof(value)))
  wstats->discard.retries = value;
 if (!wl3501_get_mib_value(this, WL3501_MIB_ATTR_FAILED_COUNT,
      &value, sizeof(value)))
  wstats->discard.misc += value;
 if (!wl3501_get_mib_value(this, WL3501_MIB_ATTR_RTS_FAILURE_COUNT,
      &value, sizeof(value)))
  wstats->discard.misc += value;
 if (!wl3501_get_mib_value(this, WL3501_MIB_ATTR_ACK_FAILURE_COUNT,
      &value, sizeof(value)))
  wstats->discard.misc += value;
 if (!wl3501_get_mib_value(this, WL3501_MIB_ATTR_FRAME_DUPLICATE_COUNT,
      &value, sizeof(value)))
  wstats->discard.misc += value;
 return wstats;
}
