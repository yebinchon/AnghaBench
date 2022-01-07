
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {int idProduct; } ;
struct usb_device {TYPE_5__ descriptor; int dev; } ;
struct firmware {int size; int data; } ;
struct TYPE_14__ {int * i2c_algo; TYPE_4__* adapter; } ;
struct TYPE_8__ {int rc_codes; } ;
struct TYPE_9__ {TYPE_1__ core; } ;
struct TYPE_13__ {TYPE_2__ rc; } ;
struct TYPE_11__ {TYPE_3__* fe; } ;
struct TYPE_10__ {int * tuner_attach; } ;


 int DW2101_FIRMWARE ;
 int DW210X_READ_MSG ;
 int DW210X_WRITE_MSG ;
 int EINVAL ;
 int GFP_KERNEL ;
 int RC_MAP_TEVII_NEC ;





 int dw2102_earda_i2c_algo ;
 int dw2102_i2c_algo ;
 TYPE_7__ dw2102_properties ;
 int dw2102_tuner_attach ;
 TYPE_6__ dw2104_properties ;
 int dw210x_op_rw (struct usb_device*,int,int,int ,int*,int,int ) ;
 int err (char*,...) ;
 int err_str ;
 int info (char*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (int*,int ,int) ;
 int msleep (int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;

__attribute__((used)) static int dw2102_load_firmware(struct usb_device *dev,
   const struct firmware *frmwr)
{
 u8 *b, *p;
 int ret = 0, i;
 u8 reset;
 u8 reset16[] = {0, 0, 0, 0, 0, 0, 0};
 const struct firmware *fw;

 switch (le16_to_cpu(dev->descriptor.idProduct)) {
 case 0x2101:
  ret = request_firmware(&fw, DW2101_FIRMWARE, &dev->dev);
  if (ret != 0) {
   err(err_str, DW2101_FIRMWARE);
   return ret;
  }
  break;
 default:
  fw = frmwr;
  break;
 }
 info("start downloading DW210X firmware");
 p = kmalloc(fw->size, GFP_KERNEL);
 reset = 1;

 dw210x_op_rw(dev, 0xa0, 0x7f92, 0, &reset, 1, DW210X_WRITE_MSG);
 dw210x_op_rw(dev, 0xa0, 0xe600, 0, &reset, 1, DW210X_WRITE_MSG);

 if (p != ((void*)0)) {
  memcpy(p, fw->data, fw->size);
  for (i = 0; i < fw->size; i += 0x40) {
   b = (u8 *) p + i;
   if (dw210x_op_rw(dev, 0xa0, i, 0, b , 0x40,
     DW210X_WRITE_MSG) != 0x40) {
    err("error while transferring firmware");
    ret = -EINVAL;
    break;
   }
  }

  reset = 0;
  if (ret || dw210x_op_rw(dev, 0xa0, 0x7f92, 0, &reset, 1,
     DW210X_WRITE_MSG) != 1) {
   err("could not restart the USB controller CPU.");
   ret = -EINVAL;
  }
  if (ret || dw210x_op_rw(dev, 0xa0, 0xe600, 0, &reset, 1,
     DW210X_WRITE_MSG) != 1) {
   err("could not restart the USB controller CPU.");
   ret = -EINVAL;
  }

  switch (le16_to_cpu(dev->descriptor.idProduct)) {
  case 128:
   dw2104_properties.rc.core.rc_codes = RC_MAP_TEVII_NEC;

  case 131:
   reset = 1;
   dw210x_op_rw(dev, 0xc4, 0x0000, 0, &reset, 1,
     DW210X_WRITE_MSG);

  case 130:
   reset = 0;
   dw210x_op_rw(dev, 0xbf, 0x0040, 0, &reset, 0,
     DW210X_WRITE_MSG);
   break;
  case 129:
  case 132:
   dw210x_op_rw(dev, 0xbf, 0x0040, 0, &reset, 0,
     DW210X_WRITE_MSG);
   dw210x_op_rw(dev, 0xb9, 0x0000, 0, &reset16[0], 2,
     DW210X_READ_MSG);

   dw210x_op_rw(dev, 0xb5, 0, 0, &reset16[0], 2,
     DW210X_READ_MSG);
   if ((reset16[0] == 0xa1) || (reset16[0] == 0x80)) {
    dw2102_properties.i2c_algo = &dw2102_i2c_algo;
    dw2102_properties.adapter->fe[0].tuner_attach = &dw2102_tuner_attach;
    break;
   } else {

    reset16[0] = 0xd0;
    reset16[1] = 1;
    reset16[2] = 0;
    dw210x_op_rw(dev, 0xc2, 0, 0, &reset16[0], 3,
      DW210X_WRITE_MSG);
    dw210x_op_rw(dev, 0xc3, 0xd1, 0, &reset16[0], 3,
      DW210X_READ_MSG);
    if (reset16[2] == 0x11) {
     dw2102_properties.i2c_algo = &dw2102_earda_i2c_algo;
     break;
    }
   }

  case 0x2101:
   dw210x_op_rw(dev, 0xbc, 0x0030, 0, &reset16[0], 2,
     DW210X_READ_MSG);
   dw210x_op_rw(dev, 0xba, 0x0000, 0, &reset16[0], 7,
     DW210X_READ_MSG);
   dw210x_op_rw(dev, 0xba, 0x0000, 0, &reset16[0], 7,
     DW210X_READ_MSG);
   dw210x_op_rw(dev, 0xb9, 0x0000, 0, &reset16[0], 2,
     DW210X_READ_MSG);
   break;
  }

  msleep(100);
  kfree(p);
 }

 if (le16_to_cpu(dev->descriptor.idProduct) == 0x2101)
  release_firmware(fw);
 return ret;
}
