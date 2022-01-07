
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ NIXGE_HDR_SIZE ;
 scalar_t__ NIXGE_MAX_JUMBO_FRAME_SIZE ;
 scalar_t__ NIXGE_TRL_SIZE ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int nixge_change_mtu(struct net_device *ndev, int new_mtu)
{
 if (netif_running(ndev))
  return -EBUSY;

 if ((new_mtu + NIXGE_HDR_SIZE + NIXGE_TRL_SIZE) >
      NIXGE_MAX_JUMBO_FRAME_SIZE)
  return -EINVAL;

 ndev->mtu = new_mtu;

 return 0;
}
