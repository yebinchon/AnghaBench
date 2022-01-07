
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dev; } ;
struct firmware {int size; int data; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int OPERA_READ_MSG ;
 int OPERA_WRITE_FX2 ;
 int OPERA_WRITE_MSG ;
 int err (char*,...) ;
 int info (char*,char const*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (int*,int ,int) ;
 int opera1_xilinx_rw (struct usb_device*,int,int,int*,int,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;

__attribute__((used)) static int opera1_xilinx_load_firmware(struct usb_device *dev,
           const char *filename)
{
 const struct firmware *fw = ((void*)0);
 u8 *b, *p;
 int ret = 0, i,fpgasize=40;
 u8 testval;
 info("start downloading fpga firmware %s",filename);

 if ((ret = request_firmware(&fw, filename, &dev->dev)) != 0) {
  err("did not find the firmware file '%s'. You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware",
   filename);
  return ret;
 } else {
  p = kmalloc(fw->size, GFP_KERNEL);
  opera1_xilinx_rw(dev, 0xbc, 0x00, &testval, 1, OPERA_READ_MSG);
  if (p != ((void*)0) && testval != 0x67) {

   u8 reset = 0, fpga_command = 0;
   memcpy(p, fw->data, fw->size);

   opera1_xilinx_rw(dev, 0xbc, 0xaa, &fpga_command, 1,
      OPERA_WRITE_MSG);
   for (i = 0; i < fw->size;) {
    if ( (fw->size - i) <fpgasize){
        fpgasize=fw->size-i;
    }
    b = (u8 *) p + i;
    if (opera1_xilinx_rw
     (dev, OPERA_WRITE_FX2, 0x0, b , fpgasize,
      OPERA_WRITE_MSG) != fpgasize
     ) {
     err("error while transferring firmware");
     ret = -EINVAL;
     break;
    }
    i = i + fpgasize;
   }

   if (ret || opera1_xilinx_rw
     (dev, 0xa0, 0xe600, &reset, 1,
     OPERA_WRITE_MSG) != 1) {
    err("could not restart the USB controller CPU.");
    ret = -EINVAL;
   }
  }
 }
 kfree(p);
 release_firmware(fw);
 return ret;
}
