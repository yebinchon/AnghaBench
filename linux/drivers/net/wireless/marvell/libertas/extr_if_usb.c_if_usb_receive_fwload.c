
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {scalar_t__ status; struct if_usb_card* context; } ;
struct sk_buff {scalar_t__ data; } ;
struct if_usb_card {int fwdnldover; scalar_t__ bootcmdresp; int CRC_OK; scalar_t__ fwfinalblk; int fw_timeout; TYPE_2__* udev; int fw_wq; struct sk_buff* rx_skb; } ;
struct fwsyncheader {scalar_t__ seqnum; int cmd; } ;
struct bootcmdresp {scalar_t__ magic; scalar_t__ cmd; scalar_t__ result; } ;
typedef int bootcmdresp ;
typedef scalar_t__ __le32 ;
struct TYPE_3__ {int bcdDevice; } ;
struct TYPE_4__ {int dev; TYPE_1__ descriptor; } ;


 scalar_t__ BOOT_CMD_FW_BY_USB ;
 int BOOT_CMD_MAGIC_NUMBER ;
 scalar_t__ BOOT_CMD_RESP_OK ;
 scalar_t__ BOOT_CMD_UPDATE_BOOT2 ;
 scalar_t__ BOOT_CMD_UPDATE_FW ;
 int CMD_TYPE_DATA ;
 int CMD_TYPE_INDICATION ;
 int CMD_TYPE_REQUEST ;
 int GFP_ATOMIC ;
 int HZ ;
 scalar_t__ IPFIELD_ALIGN_OFFSET ;
 int MACREG_INT_CODE_FIRMWARE_READY ;
 scalar_t__ cpu_to_le32 (int ) ;
 int if_usb_send_fw_pkt (struct if_usb_card*) ;
 int if_usb_submit_rx_urb_fwload (struct if_usb_card*) ;
 scalar_t__ jiffies ;
 int kfree (struct fwsyncheader*) ;
 int kfree_skb (struct sk_buff*) ;
 struct fwsyncheader* kmemdup (scalar_t__,int,int ) ;
 int lbs_deb_usb (char*,scalar_t__,scalar_t__) ;
 int lbs_deb_usb2 (int *,char*,...) ;
 int lbs_deb_usbd (int *,char*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 int memcpy (struct bootcmdresp*,scalar_t__,int) ;
 int mod_timer (int *,scalar_t__) ;
 int pr_info (char*,...) ;
 int wake_up (int *) ;

__attribute__((used)) static void if_usb_receive_fwload(struct urb *urb)
{
 struct if_usb_card *cardp = urb->context;
 struct sk_buff *skb = cardp->rx_skb;
 struct fwsyncheader *syncfwheader;
 struct bootcmdresp bootcmdresp;

 if (urb->status) {
  lbs_deb_usbd(&cardp->udev->dev,
        "URB status is failed during fw load\n");
  kfree_skb(skb);
  return;
 }

 if (cardp->fwdnldover) {
  __le32 *tmp = (__le32 *)(skb->data + IPFIELD_ALIGN_OFFSET);

  if (tmp[0] == cpu_to_le32(CMD_TYPE_INDICATION) &&
      tmp[1] == cpu_to_le32(MACREG_INT_CODE_FIRMWARE_READY)) {
   pr_info("Firmware ready event received\n");
   wake_up(&cardp->fw_wq);
  } else {
   lbs_deb_usb("Waiting for confirmation; got %x %x\n",
        le32_to_cpu(tmp[0]), le32_to_cpu(tmp[1]));
   if_usb_submit_rx_urb_fwload(cardp);
  }
  kfree_skb(skb);
  return;
 }
 if (cardp->bootcmdresp <= 0) {
  memcpy (&bootcmdresp, skb->data + IPFIELD_ALIGN_OFFSET,
   sizeof(bootcmdresp));

  if (le16_to_cpu(cardp->udev->descriptor.bcdDevice) < 0x3106) {
   kfree_skb(skb);
   if_usb_submit_rx_urb_fwload(cardp);
   cardp->bootcmdresp = BOOT_CMD_RESP_OK;
   lbs_deb_usbd(&cardp->udev->dev,
         "Received valid boot command response\n");
   return;
  }
  if (bootcmdresp.magic != cpu_to_le32(BOOT_CMD_MAGIC_NUMBER)) {
   if (bootcmdresp.magic == cpu_to_le32(CMD_TYPE_REQUEST) ||
       bootcmdresp.magic == cpu_to_le32(CMD_TYPE_DATA) ||
       bootcmdresp.magic == cpu_to_le32(CMD_TYPE_INDICATION)) {
    if (!cardp->bootcmdresp)
     pr_info("Firmware already seems alive; resetting\n");
    cardp->bootcmdresp = -1;
   } else {
    pr_info("boot cmd response wrong magic number (0x%x)\n",
         le32_to_cpu(bootcmdresp.magic));
   }
  } else if ((bootcmdresp.cmd != BOOT_CMD_FW_BY_USB) &&
      (bootcmdresp.cmd != BOOT_CMD_UPDATE_FW) &&
      (bootcmdresp.cmd != BOOT_CMD_UPDATE_BOOT2)) {
   pr_info("boot cmd response cmd_tag error (%d)\n",
    bootcmdresp.cmd);
  } else if (bootcmdresp.result != BOOT_CMD_RESP_OK) {
   pr_info("boot cmd response result error (%d)\n",
    bootcmdresp.result);
  } else {
   cardp->bootcmdresp = 1;
   lbs_deb_usbd(&cardp->udev->dev,
         "Received valid boot command response\n");
  }
  kfree_skb(skb);
  if_usb_submit_rx_urb_fwload(cardp);
  return;
 }

 syncfwheader = kmemdup(skb->data + IPFIELD_ALIGN_OFFSET,
          sizeof(struct fwsyncheader), GFP_ATOMIC);
 if (!syncfwheader) {
  lbs_deb_usbd(&cardp->udev->dev, "Failure to allocate syncfwheader\n");
  kfree_skb(skb);
  return;
 }

 if (!syncfwheader->cmd) {
  lbs_deb_usb2(&cardp->udev->dev, "FW received Blk with correct CRC\n");
  lbs_deb_usb2(&cardp->udev->dev, "FW received Blk seqnum = %d\n",
        le32_to_cpu(syncfwheader->seqnum));
  cardp->CRC_OK = 1;
 } else {
  lbs_deb_usbd(&cardp->udev->dev, "FW received Blk with CRC error\n");
  cardp->CRC_OK = 0;
 }

 kfree_skb(skb);


 mod_timer(&cardp->fw_timeout, jiffies + (HZ*5));

 if (cardp->fwfinalblk) {
  cardp->fwdnldover = 1;
  goto exit;
 }

 if_usb_send_fw_pkt(cardp);

 exit:
 if_usb_submit_rx_urb_fwload(cardp);

 kfree(syncfwheader);
}
