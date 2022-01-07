
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wrqu ;
struct TYPE_2__ {int sa_family; int sa_data; } ;
union iwreq_data {TYPE_1__ addr; } ;
struct sta_info {int addr; } ;
struct net_device {int dummy; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int IWEVREGISTERED ;
 int memcpy (int ,int ,int ) ;
 int memset (union iwreq_data*,int ,int) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,int *) ;

__attribute__((used)) static void hostap_event_new_sta(struct net_device *dev, struct sta_info *sta)
{
 union iwreq_data wrqu;
 memset(&wrqu, 0, sizeof(wrqu));
 memcpy(wrqu.addr.sa_data, sta->addr, ETH_ALEN);
 wrqu.addr.sa_family = ARPHRD_ETHER;
 wireless_send_event(dev, IWEVREGISTERED, &wrqu, ((void*)0));
}
