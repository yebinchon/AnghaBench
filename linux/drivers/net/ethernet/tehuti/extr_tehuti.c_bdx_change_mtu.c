
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int ENTER ;
 int RET (int ) ;
 int bdx_close (struct net_device*) ;
 int bdx_open (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int bdx_change_mtu(struct net_device *ndev, int new_mtu)
{
 ENTER;

 ndev->mtu = new_mtu;
 if (netif_running(ndev)) {
  bdx_close(ndev);
  bdx_open(ndev);
 }
 RET(0);
}
