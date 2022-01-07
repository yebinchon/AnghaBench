
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int mtu; } ;
struct bnad {int conf_mutex; int netdev; } ;


 int BNAD_FRAME_SIZE (int) ;
 scalar_t__ BNAD_PCI_DEV_IS_CAT2 (struct bnad*) ;
 int EBUSY ;
 int bnad_mtu_set (struct bnad*,int) ;
 int bnad_reinit_rx (struct bnad*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static int
bnad_change_mtu(struct net_device *netdev, int new_mtu)
{
 int err, mtu;
 struct bnad *bnad = netdev_priv(netdev);
 u32 rx_count = 0, frame, new_frame;

 mutex_lock(&bnad->conf_mutex);

 mtu = netdev->mtu;
 netdev->mtu = new_mtu;

 frame = BNAD_FRAME_SIZE(mtu);
 new_frame = BNAD_FRAME_SIZE(new_mtu);


 if (BNAD_PCI_DEV_IS_CAT2(bnad) &&
     netif_running(bnad->netdev)) {

  if ((frame <= 4096 && new_frame > 4096) ||
      (frame > 4096 && new_frame <= 4096))
   rx_count = bnad_reinit_rx(bnad);
 }




 err = bnad_mtu_set(bnad, new_frame);
 if (err)
  err = -EBUSY;

 mutex_unlock(&bnad->conf_mutex);
 return err;
}
