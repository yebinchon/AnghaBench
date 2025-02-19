
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
typedef int u8 ;
struct net_device {int dummy; } ;
struct libipw_device {scalar_t__ wpa_ie_len; int * wpa_ie; int wpa_enabled; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {struct libipw_device* ieee; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ MAX_WPA_IE_LEN ;
 int ipw2100_wpa_assoc_frame (struct ipw2100_priv*,int *,scalar_t__) ;
 int kfree (int *) ;
 int * kmemdup (char*,scalar_t__,int ) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;

__attribute__((used)) static int ipw2100_wx_set_genie(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{

 struct ipw2100_priv *priv = libipw_priv(dev);
 struct libipw_device *ieee = priv->ieee;
 u8 *buf;

 if (!ieee->wpa_enabled)
  return -EOPNOTSUPP;

 if (wrqu->data.length > MAX_WPA_IE_LEN ||
     (wrqu->data.length && extra == ((void*)0)))
  return -EINVAL;

 if (wrqu->data.length) {
  buf = kmemdup(extra, wrqu->data.length, GFP_KERNEL);
  if (buf == ((void*)0))
   return -ENOMEM;

  kfree(ieee->wpa_ie);
  ieee->wpa_ie = buf;
  ieee->wpa_ie_len = wrqu->data.length;
 } else {
  kfree(ieee->wpa_ie);
  ieee->wpa_ie = ((void*)0);
  ieee->wpa_ie_len = 0;
 }

 ipw2100_wpa_assoc_frame(priv, ieee->wpa_ie, ieee->wpa_ie_len);

 return 0;
}
