
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int * usb_buf; int dev; } ;


 int pr_err (char*,int ,int) ;
 int usb_bulk_msg (int ,int ,int *,int,int *,int) ;
 int usb_rcvbulkpipe (int ,int) ;

__attribute__((used)) static int jl2005c_read1(struct gspca_dev *gspca_dev)
{
 int retval;

 retval = usb_bulk_msg(gspca_dev->dev,
    usb_rcvbulkpipe(gspca_dev->dev, 0x84),
    gspca_dev->usb_buf, 1, ((void*)0), 500);
 if (retval < 0)
  pr_err("read command [0x%02x] error %d\n",
         gspca_dev->usb_buf[0], retval);
 return retval;
}
