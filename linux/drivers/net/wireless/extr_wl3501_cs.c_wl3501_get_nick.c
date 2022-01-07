
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct wl3501_card {int nick; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 struct wl3501_card* netdev_priv (struct net_device*) ;
 int strlcpy (char*,int ,int) ;
 int strlen (char*) ;

__attribute__((used)) static int wl3501_get_nick(struct net_device *dev, struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct wl3501_card *this = netdev_priv(dev);

 strlcpy(extra, this->nick, 32);
 wrqu->data.length = strlen(extra);
 return 0;
}
