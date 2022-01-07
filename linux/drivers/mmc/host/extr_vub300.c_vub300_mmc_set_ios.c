
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vub300_mmc_host {int card_powered; int kref; int cmd_mutex; int udev; int interface; } ;
struct mmc_ios {scalar_t__ power_mode; } ;
struct mmc_host {int dummy; } ;


 int GFP_KERNEL ;
 int HZ ;
 scalar_t__ MMC_POWER_OFF ;
 scalar_t__ MMC_POWER_ON ;
 scalar_t__ MMC_POWER_UP ;
 int SET_SD_POWER ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int __set_clock_speed (struct vub300_mmc_host*,int *,struct mmc_ios*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 struct vub300_mmc_host* mmc_priv (struct mmc_host*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int,int,int,int *,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;
 int vub300_delete ;

__attribute__((used)) static void vub300_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct vub300_mmc_host *vub300 = mmc_priv(mmc);
 if (!vub300->interface)
  return;
 kref_get(&vub300->kref);
 mutex_lock(&vub300->cmd_mutex);
 if ((ios->power_mode == MMC_POWER_OFF) && vub300->card_powered) {
  vub300->card_powered = 0;
  usb_control_msg(vub300->udev, usb_sndctrlpipe(vub300->udev, 0),
    SET_SD_POWER,
    USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    0x0000, 0x0000, ((void*)0), 0, HZ);

  msleep(600);
 } else if ((ios->power_mode == MMC_POWER_UP) && !vub300->card_powered) {
  usb_control_msg(vub300->udev, usb_sndctrlpipe(vub300->udev, 0),
    SET_SD_POWER,
    USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    0x0001, 0x0000, ((void*)0), 0, HZ);
  msleep(600);
  vub300->card_powered = 1;
 } else if (ios->power_mode == MMC_POWER_ON) {
  u8 *buf = kmalloc(8, GFP_KERNEL);
  if (buf) {
   __set_clock_speed(vub300, buf, ios);
   kfree(buf);
  }
 } else {

 }
 mutex_unlock(&vub300->cmd_mutex);
 kref_put(&vub300->kref, vub300_delete);
}
