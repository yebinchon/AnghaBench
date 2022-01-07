
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int dummy; } ;


 int xge_mac_reset (struct xge_pdata*) ;
 int xge_mac_set_speed (struct xge_pdata*) ;
 int xge_mac_set_station_addr (struct xge_pdata*) ;

void xge_mac_init(struct xge_pdata *pdata)
{
 xge_mac_reset(pdata);
 xge_mac_set_speed(pdata);
 xge_mac_set_station_addr(pdata);
}
