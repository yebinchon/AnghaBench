
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int radio_tx_dev; int radio_rx_dev; int sdr_cap_dev; int vbi_out_dev; int vbi_cap_dev; int vid_out_dev; int vid_cap_dev; } ;


 unsigned int vivid_is_in_use (int *) ;

__attribute__((used)) static bool vivid_is_last_user(struct vivid_dev *dev)
{
 unsigned uses = vivid_is_in_use(&dev->vid_cap_dev) +
   vivid_is_in_use(&dev->vid_out_dev) +
   vivid_is_in_use(&dev->vbi_cap_dev) +
   vivid_is_in_use(&dev->vbi_out_dev) +
   vivid_is_in_use(&dev->sdr_cap_dev) +
   vivid_is_in_use(&dev->radio_rx_dev) +
   vivid_is_in_use(&dev->radio_tx_dev);

 return uses == 1;
}
