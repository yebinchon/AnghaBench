
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct firmware {int* data; int size; } ;
struct dvb_usb_device {TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LOAD_BCM4500 ;
 int bcm4500_firmware ;
 scalar_t__ dvb_usb_generic_write (struct dvb_usb_device*,int*,int) ;
 int err (char*,...) ;
 scalar_t__ gp8psk_usb_out_op (struct dvb_usb_device*,int ,int,int ,int *,int ) ;
 int info (char*,int ) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (int*,int const*,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;

__attribute__((used)) static int gp8psk_load_bcm4500fw(struct dvb_usb_device *d)
{
 int ret;
 const struct firmware *fw = ((void*)0);
 const u8 *ptr;
 u8 *buf;
 if ((ret = request_firmware(&fw, bcm4500_firmware,
     &d->udev->dev)) != 0) {
  err("did not find the bcm4500 firmware file '%s' (status %d). You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware",
   bcm4500_firmware,ret);
  return ret;
 }

 ret = -EINVAL;

 if (gp8psk_usb_out_op(d, LOAD_BCM4500,1,0,((void*)0), 0))
  goto out_rel_fw;

 info("downloading bcm4500 firmware from file '%s'",bcm4500_firmware);

 ptr = fw->data;
 buf = kmalloc(64, GFP_KERNEL);
 if (!buf) {
  ret = -ENOMEM;
  goto out_rel_fw;
 }

 while (ptr[0] != 0xff) {
  u16 buflen = ptr[0] + 4;
  if (ptr + buflen >= fw->data + fw->size) {
   err("failed to load bcm4500 firmware.");
   goto out_free;
  }
  if (buflen > 64) {
   err("firmware chunk size bigger than 64 bytes.");
   goto out_free;
  }

  memcpy(buf, ptr, buflen);
  if (dvb_usb_generic_write(d, buf, buflen)) {
   err("failed to load bcm4500 firmware.");
   goto out_free;
  }
  ptr += buflen;
 }

 ret = 0;

out_free:
 kfree(buf);
out_rel_fw:
 release_firmware(fw);

 return ret;
}
