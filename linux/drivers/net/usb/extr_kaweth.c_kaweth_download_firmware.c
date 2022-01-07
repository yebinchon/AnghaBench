
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kaweth_device {int* firmware_buf; TYPE_2__* dev; int net; TYPE_1__* intf; } ;
struct firmware {int size; int data; } ;
typedef void* __u8 ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int dev; } ;


 int ENOSPC ;
 int KAWETH_COMMAND_SCAN ;
 int KAWETH_CONTROL_TIMEOUT ;
 int KAWETH_FIRMWARE_BUF_SIZE ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,...) ;
 int kaweth_control (struct kaweth_device*,int ,int ,int,int ,int ,void*,int,int ) ;
 int memcpy (int*,int ,int) ;
 int netdev_dbg (int ,char*,...) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;
 int usb_sndctrlpipe (TYPE_2__*,int ) ;

__attribute__((used)) static int kaweth_download_firmware(struct kaweth_device *kaweth,
        const char *fwname,
        __u8 interrupt,
        __u8 type)
{
 const struct firmware *fw;
 int data_len;
 int ret;

 ret = request_firmware(&fw, fwname, &kaweth->dev->dev);
 if (ret) {
  dev_err(&kaweth->intf->dev, "Firmware request failed\n");
  return ret;
 }

 if (fw->size > KAWETH_FIRMWARE_BUF_SIZE) {
  dev_err(&kaweth->intf->dev, "Firmware too big: %zu\n",
   fw->size);
  release_firmware(fw);
  return -ENOSPC;
 }
 data_len = fw->size;
 memcpy(kaweth->firmware_buf, fw->data, fw->size);

 release_firmware(fw);

 kaweth->firmware_buf[2] = (data_len & 0xFF) - 7;
 kaweth->firmware_buf[3] = data_len >> 8;
 kaweth->firmware_buf[4] = type;
 kaweth->firmware_buf[5] = interrupt;

 netdev_dbg(kaweth->net, "High: %i, Low:%i\n", kaweth->firmware_buf[3],
     kaweth->firmware_buf[2]);

 netdev_dbg(kaweth->net,
     "Downloading firmware at %p to kaweth device at %p\n",
     kaweth->firmware_buf, kaweth);
 netdev_dbg(kaweth->net, "Firmware length: %d\n", data_len);

 return kaweth_control(kaweth,
                usb_sndctrlpipe(kaweth->dev, 0),
         KAWETH_COMMAND_SCAN,
         USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
         0,
         0,
         (void *)kaweth->firmware_buf,
         data_len,
         KAWETH_CONTROL_TIMEOUT);
}
