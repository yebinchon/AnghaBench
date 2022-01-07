
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct dvb_usb_device {int udev; } ;


 int CYPRESS_FX2 ;
 int cypress_load_firmware (int ,struct firmware const*,int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static int az6007_download_firmware(struct dvb_usb_device *d,
 const struct firmware *fw)
{
 pr_debug("Loading az6007 firmware\n");

 return cypress_load_firmware(d->udev, fw, CYPRESS_FX2);
}
