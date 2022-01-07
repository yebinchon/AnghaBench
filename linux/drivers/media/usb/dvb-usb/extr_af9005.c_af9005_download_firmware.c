
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct firmware {int size; scalar_t__ data; } ;


 int EIO ;
 int ENOMEM ;
 int FW_BOOT ;
 int FW_BULKOUT_SIZE ;
 int FW_CONFIG ;
 int FW_CONFIRM ;
 int GFP_KERNEL ;
 int af9005_boot_packet (struct usb_device*,int ,int*,int*,int) ;
 int deb_fw (char*) ;
 int debug_dump (int*,int,int (*) (char*)) ;
 int err (char*,int,...) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (int*,scalar_t__,int) ;
 int usb_bulk_msg (struct usb_device*,int ,int*,int,int*,int) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;

__attribute__((used)) static int af9005_download_firmware(struct usb_device *udev, const struct firmware *fw)
{
 int i, packets, ret, act_len;

 u8 *buf;
 u8 reply;

 buf = kmalloc(FW_BULKOUT_SIZE + 2, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = af9005_boot_packet(udev, FW_CONFIG, &reply, buf,
     FW_BULKOUT_SIZE + 2);
 if (ret)
  goto err;
 if (reply != 0x01) {
  err("before downloading firmware, FW_CONFIG expected 0x01, received 0x%x", reply);
  ret = -EIO;
  goto err;
 }
 packets = fw->size / FW_BULKOUT_SIZE;
 buf[0] = (u8) (FW_BULKOUT_SIZE & 0xff);
 buf[1] = (u8) ((FW_BULKOUT_SIZE >> 8) & 0xff);
 for (i = 0; i < packets; i++) {
  memcpy(&buf[2], fw->data + i * FW_BULKOUT_SIZE,
         FW_BULKOUT_SIZE);
  deb_fw(">>> ");
  debug_dump(buf, FW_BULKOUT_SIZE + 2, deb_fw);
  ret = usb_bulk_msg(udev,
       usb_sndbulkpipe(udev, 0x02),
       buf, FW_BULKOUT_SIZE + 2, &act_len, 1000);
  if (ret) {
   err("firmware download failed at packet %d with code %d", i, ret);
   goto err;
  }
 }
 ret = af9005_boot_packet(udev, FW_CONFIRM, &reply,
     buf, FW_BULKOUT_SIZE + 2);
 if (ret)
  goto err;
 if (reply != (u8) (packets & 0xff)) {
  err("after downloading firmware, FW_CONFIRM expected 0x%x, received 0x%x", packets & 0xff, reply);
  ret = -EIO;
  goto err;
 }
 ret = af9005_boot_packet(udev, FW_BOOT, &reply, buf,
     FW_BULKOUT_SIZE + 2);
 if (ret)
  goto err;
 ret = af9005_boot_packet(udev, FW_CONFIG, &reply, buf,
     FW_BULKOUT_SIZE + 2);
 if (ret)
  goto err;
 if (reply != 0x02) {
  err("after downloading firmware, FW_CONFIG expected 0x02, received 0x%x", reply);
  ret = -EIO;
  goto err;
 }

err:
 kfree(buf);
 return ret;

}
