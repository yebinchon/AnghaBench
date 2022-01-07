
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lbs_private {int ehs_remove_supported; int wol_criteria; struct if_usb_card* card; } ;
struct if_usb_card {scalar_t__ bootcmdresp; int CRC_OK; int fwseqnum; struct firmware const* fw; TYPE_2__* priv; scalar_t__ fwdnldover; int rx_urb; int fw_timeout; scalar_t__ surprise_removed; int fw_wq; scalar_t__ fwfinalblk; scalar_t__ totalbytes; scalar_t__ fwlastblksent; int tx_urb; TYPE_1__* udev; } ;
struct firmware {int size; int data; } ;
struct TYPE_4__ {int fw_ready; } ;
struct TYPE_3__ {int dev; } ;


 int BOOT_CMD_FW_BY_USB ;
 scalar_t__ BOOT_CMD_RESP_NOT_SUPPORTED ;
 int EHS_REMOVE_WAKEUP ;
 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;
 scalar_t__ check_fwfile_format (int ,int ) ;
 int del_timer_sync (int *) ;
 int if_usb_issue_boot_command (struct if_usb_card*,int ) ;
 int if_usb_reset_device (struct if_usb_card*) ;
 int if_usb_send_fw_pkt (struct if_usb_card*) ;
 int if_usb_setup_firmware (struct lbs_private*) ;
 scalar_t__ if_usb_submit_rx_urb (struct if_usb_card*) ;
 scalar_t__ if_usb_submit_rx_urb_fwload (struct if_usb_card*) ;
 int lbs_deb_usbd (int *,char*) ;
 scalar_t__ lbs_host_sleep_cfg (struct lbs_private*,int ,int *) ;
 scalar_t__ lbs_start_card (struct lbs_private*) ;
 int msleep_interruptible (int) ;
 int pr_err (char*,int) ;
 int pr_info (char*,...) ;
 int usb_kill_urb (int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static void if_usb_prog_firmware(struct lbs_private *priv, int ret,
     const struct firmware *fw,
     const struct firmware *unused)
{
 struct if_usb_card *cardp = priv->card;
 int i = 0;
 static int reset_count = 10;

 if (ret) {
  pr_err("failed to find firmware (%d)\n", ret);
  goto done;
 }

 cardp->fw = fw;
 if (check_fwfile_format(cardp->fw->data, cardp->fw->size)) {
  ret = -EINVAL;
  goto done;
 }


 usb_kill_urb(cardp->rx_urb);
 usb_kill_urb(cardp->tx_urb);

 cardp->fwlastblksent = 0;
 cardp->fwdnldover = 0;
 cardp->totalbytes = 0;
 cardp->fwfinalblk = 0;
 cardp->bootcmdresp = 0;

restart:
 if (if_usb_submit_rx_urb_fwload(cardp) < 0) {
  lbs_deb_usbd(&cardp->udev->dev, "URB submission is failed\n");
  ret = -EIO;
  goto done;
 }

 cardp->bootcmdresp = 0;
 do {
  int j = 0;
  i++;
  if_usb_issue_boot_command(cardp, BOOT_CMD_FW_BY_USB);

  do {
   j++;
   msleep_interruptible(100);
  } while (cardp->bootcmdresp == 0 && j < 10);
 } while (cardp->bootcmdresp == 0 && i < 5);

 if (cardp->bootcmdresp == BOOT_CMD_RESP_NOT_SUPPORTED) {

  ret = -EOPNOTSUPP;
  usb_kill_urb(cardp->rx_urb);
  usb_kill_urb(cardp->tx_urb);
  if (if_usb_submit_rx_urb(cardp) < 0)
   ret = -EIO;
  goto done;
 } else if (cardp->bootcmdresp <= 0) {
  if (--reset_count >= 0) {
   if_usb_reset_device(cardp);
   goto restart;
  }
  ret = -EIO;
  goto done;
 }

 i = 0;

 cardp->totalbytes = 0;
 cardp->fwlastblksent = 0;
 cardp->CRC_OK = 1;
 cardp->fwdnldover = 0;
 cardp->fwseqnum = -1;
 cardp->totalbytes = 0;
 cardp->fwfinalblk = 0;


 if_usb_send_fw_pkt(cardp);


 wait_event_interruptible(cardp->fw_wq, cardp->surprise_removed || cardp->fwdnldover);

 del_timer_sync(&cardp->fw_timeout);
 usb_kill_urb(cardp->rx_urb);

 if (!cardp->fwdnldover) {
  pr_info("failed to load fw, resetting device!\n");
  if (--reset_count >= 0) {
   if_usb_reset_device(cardp);
   goto restart;
  }

  pr_info("FW download failure, time = %d ms\n", i * 100);
  ret = -EIO;
  goto done;
 }

 cardp->priv->fw_ready = 1;
 if_usb_submit_rx_urb(cardp);

 if (lbs_start_card(priv))
  goto done;

 if_usb_setup_firmware(priv);




 priv->wol_criteria = EHS_REMOVE_WAKEUP;
 if (lbs_host_sleep_cfg(priv, priv->wol_criteria, ((void*)0)))
  priv->ehs_remove_supported = 0;

 done:
 cardp->fw = ((void*)0);
}
