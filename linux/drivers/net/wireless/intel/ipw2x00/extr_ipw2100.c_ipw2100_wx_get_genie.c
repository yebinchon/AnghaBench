
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct libipw_device {scalar_t__ wpa_ie_len; int * wpa_ie; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {struct libipw_device* ieee; } ;


 int E2BIG ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int memcpy (char*,int *,scalar_t__) ;

__attribute__((used)) static int ipw2100_wx_get_genie(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 struct libipw_device *ieee = priv->ieee;

 if (ieee->wpa_ie_len == 0 || ieee->wpa_ie == ((void*)0)) {
  wrqu->data.length = 0;
  return 0;
 }

 if (wrqu->data.length < ieee->wpa_ie_len)
  return -E2BIG;

 wrqu->data.length = ieee->wpa_ie_len;
 memcpy(extra, ieee->wpa_ie, ieee->wpa_ie_len);

 return 0;
}
