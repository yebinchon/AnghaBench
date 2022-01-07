
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int udev; } ;


 int AZ6007_READ_DATA ;
 int COLD ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int WARM ;
 int __az6007_read (int ,int ,int,int ,int *,int) ;
 int __az6007_write (int ,int,int,int ,int *,int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int az6007_identify_state(struct dvb_usb_device *d, const char **name)
{
 int ret;
 u8 *mac;

 pr_debug("Identifying az6007 state\n");

 mac = kmalloc(6, GFP_ATOMIC);
 if (!mac)
  return -ENOMEM;


 ret = __az6007_read(d->udev, AZ6007_READ_DATA, 6, 0, mac, 6);
 if (ret == 6)
  ret = WARM;
 else
  ret = COLD;

 kfree(mac);

 if (ret == COLD) {
  __az6007_write(d->udev, 0x09, 1, 0, ((void*)0), 0);
  __az6007_write(d->udev, 0x00, 0, 0, ((void*)0), 0);
  __az6007_write(d->udev, 0x00, 0, 0, ((void*)0), 0);
 }

 pr_debug("Device is on %s state\n",
   ret == WARM ? "warm" : "cold");
 return ret;
}
