
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s2255_dev {int timer; TYPE_2__* fw_data; int udev; } ;
struct TYPE_4__ {int pfw_data; int fw_urb; int fw_loaded; TYPE_1__* fw; int fw_state; int fw_size; } ;
struct TYPE_3__ {int data; int size; } ;


 int CHUNK_SIZE ;
 scalar_t__ HZ ;
 int S2255_FW_NOTLOADED ;
 int atomic_set (int *,int ) ;
 scalar_t__ jiffies ;
 int memcpy (int ,int ,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int s2255_fwchunk_complete ;
 int s2255_reset_dsppower (struct s2255_dev*) ;
 int usb_fill_bulk_urb (int ,int ,int ,int ,int ,int ,TYPE_2__*) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static void s2255_fwload_start(struct s2255_dev *dev)
{
 s2255_reset_dsppower(dev);
 dev->fw_data->fw_size = dev->fw_data->fw->size;
 atomic_set(&dev->fw_data->fw_state, S2255_FW_NOTLOADED);
 memcpy(dev->fw_data->pfw_data,
        dev->fw_data->fw->data, CHUNK_SIZE);
 dev->fw_data->fw_loaded = CHUNK_SIZE;
 usb_fill_bulk_urb(dev->fw_data->fw_urb, dev->udev,
     usb_sndbulkpipe(dev->udev, 2),
     dev->fw_data->pfw_data,
     CHUNK_SIZE, s2255_fwchunk_complete,
     dev->fw_data);
 mod_timer(&dev->timer, jiffies + HZ);
}
