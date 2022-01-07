
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct cx231xx {int dev; int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,int,int,int) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int usb_bulk_msg (int ,int ,int *,int,int*,int) ;
 int usb_sndbulkpipe (int ,int) ;

int cx231xx_ep5_bulkout(struct cx231xx *dev, u8 *firmware, u16 size)
{
 int errCode = 0;
 int actlen = -1;
 int ret = -ENOMEM;
 u32 *buffer;

 buffer = kzalloc(4096, GFP_KERNEL);
 if (buffer == ((void*)0))
  return -ENOMEM;
 memcpy(&buffer[0], firmware, 4096);

 ret = usb_bulk_msg(dev->udev, usb_sndbulkpipe(dev->udev, 5),
   buffer, 4096, &actlen, 2000);

 if (ret)
  dev_err(dev->dev,
   "bulk message failed: %d (%d/%d)", ret,
   size, actlen);
 else {
  errCode = actlen != size ? -1 : 0;
 }
 kfree(buffer);
 return errCode;
}
