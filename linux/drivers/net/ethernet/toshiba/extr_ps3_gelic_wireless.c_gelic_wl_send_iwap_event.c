
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_family; int sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
typedef int u8 ;
struct gelic_wl_info {int dummy; } ;
typedef int data ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int SIOCGIWAP ;
 int memcpy (int ,int *,int ) ;
 int memset (union iwreq_data*,int ,int) ;
 int port_to_netdev (int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;
 int wl_port (struct gelic_wl_info*) ;

__attribute__((used)) static void gelic_wl_send_iwap_event(struct gelic_wl_info *wl, u8 *bssid)
{
 union iwreq_data data;

 memset(&data, 0, sizeof(data));
 if (bssid)
  memcpy(data.ap_addr.sa_data, bssid, ETH_ALEN);
 data.ap_addr.sa_family = ARPHRD_ETHER;
 wireless_send_event(port_to_netdev(wl_port(wl)), SIOCGIWAP,
       &data, ((void*)0));
}
