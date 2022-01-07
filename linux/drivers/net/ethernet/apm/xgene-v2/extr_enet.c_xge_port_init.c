
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int phy_speed; } ;
struct net_device {int dummy; } ;


 int SPEED_1000 ;
 struct xge_pdata* netdev_priv (struct net_device*) ;
 int xge_mac_init (struct xge_pdata*) ;
 int xge_traffic_resume (struct net_device*) ;

void xge_port_init(struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);

 pdata->phy_speed = SPEED_1000;
 xge_mac_init(pdata);
 xge_traffic_resume(ndev);
}
