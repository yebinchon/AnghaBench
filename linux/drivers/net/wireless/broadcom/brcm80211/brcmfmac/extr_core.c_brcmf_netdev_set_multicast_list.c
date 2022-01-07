
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct brcmf_if {int multicast_work; } ;


 struct brcmf_if* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void brcmf_netdev_set_multicast_list(struct net_device *ndev)
{
 struct brcmf_if *ifp = netdev_priv(ndev);

 schedule_work(&ifp->multicast_work);
}
