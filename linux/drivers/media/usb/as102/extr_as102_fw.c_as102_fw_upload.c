
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
struct firmware {int dummy; } ;
struct as10x_bus_adapter_t {struct usb_device* usb_dev; } ;


 int DRIVER_NAME ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_FW_PKT_SIZE ;
 char* as102_dt_fw1 ;
 char* as102_dt_fw2 ;
 int as102_firmware_upload (struct as10x_bus_adapter_t*,unsigned char*,struct firmware const*) ;
 char* as102_st_fw1 ;
 char* as102_st_fw2 ;
 scalar_t__ dual_tuner ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int ,int ) ;
 int mdelay (int) ;
 int pr_err (char*,int ,...) ;
 int pr_info (char*,int ,char const*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;

int as102_fw_upload(struct as10x_bus_adapter_t *bus_adap)
{
 int errno = -EFAULT;
 const struct firmware *firmware = ((void*)0);
 unsigned char *cmd_buf = ((void*)0);
 const char *fw1, *fw2;
 struct usb_device *dev = bus_adap->usb_dev;


 if (dual_tuner) {
  fw1 = as102_dt_fw1;
  fw2 = as102_dt_fw2;
 } else {
  fw1 = as102_st_fw1;
  fw2 = as102_st_fw2;
 }


 cmd_buf = kzalloc(MAX_FW_PKT_SIZE, GFP_KERNEL);
 if (cmd_buf == ((void*)0)) {
  errno = -ENOMEM;
  goto error;
 }


 errno = request_firmware(&firmware, fw1, &dev->dev);
 if (errno < 0) {
  pr_err("%s: unable to locate firmware file: %s\n",
         DRIVER_NAME, fw1);
  goto error;
 }


 errno = as102_firmware_upload(bus_adap, cmd_buf, firmware);
 if (errno < 0) {
  pr_err("%s: error during firmware upload part1\n",
         DRIVER_NAME);
  goto error;
 }

 pr_info("%s: firmware: %s loaded with success\n",
  DRIVER_NAME, fw1);
 release_firmware(firmware);
 firmware = ((void*)0);


 mdelay(100);


 errno = request_firmware(&firmware, fw2, &dev->dev);
 if (errno < 0) {
  pr_err("%s: unable to locate firmware file: %s\n",
         DRIVER_NAME, fw2);
  goto error;
 }


 errno = as102_firmware_upload(bus_adap, cmd_buf, firmware);
 if (errno < 0) {
  pr_err("%s: error during firmware upload part2\n",
         DRIVER_NAME);
  goto error;
 }

 pr_info("%s: firmware: %s loaded with success\n",
  DRIVER_NAME, fw2);
error:
 kfree(cmd_buf);
 release_firmware(firmware);

 return errno;
}
