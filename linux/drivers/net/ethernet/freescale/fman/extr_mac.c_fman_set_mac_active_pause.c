
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mac_device {int rx_pause_active; int (* set_rx_pause ) (struct fman_mac*,int) ;int tx_pause_active; int (* set_tx_pause ) (struct fman_mac*,int ,int ,int ) ;struct fman_mac* fman_mac; } ;
struct fman_mac {int dummy; } ;


 int FSL_FM_PAUSE_TIME_DISABLE ;
 int FSL_FM_PAUSE_TIME_ENABLE ;
 scalar_t__ likely (int) ;
 int stub1 (struct fman_mac*,int) ;
 int stub2 (struct fman_mac*,int ,int ,int ) ;

int fman_set_mac_active_pause(struct mac_device *mac_dev, bool rx, bool tx)
{
 struct fman_mac *fman_mac = mac_dev->fman_mac;
 int err = 0;

 if (rx != mac_dev->rx_pause_active) {
  err = mac_dev->set_rx_pause(fman_mac, rx);
  if (likely(err == 0))
   mac_dev->rx_pause_active = rx;
 }

 if (tx != mac_dev->tx_pause_active) {
  u16 pause_time = (tx ? FSL_FM_PAUSE_TIME_ENABLE :
      FSL_FM_PAUSE_TIME_DISABLE);

  err = mac_dev->set_tx_pause(fman_mac, 0, pause_time, 0);

  if (likely(err == 0))
   mac_dev->tx_pause_active = tx;
 }

 return err;
}
