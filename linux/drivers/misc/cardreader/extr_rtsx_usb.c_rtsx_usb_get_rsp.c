
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_ucr {int rsp_buf; int pusb_dev; } ;


 int ALIGN (int,int) ;
 int EINVAL ;
 int EP_BULK_IN ;
 int rtsx_usb_transfer_data (struct rtsx_ucr*,int ,int ,int,int ,int *,int) ;
 int usb_rcvbulkpipe (int ,int ) ;

int rtsx_usb_get_rsp(struct rtsx_ucr *ucr, int rsp_len, int timeout)
{
 if (rsp_len <= 0)
  return -EINVAL;

 rsp_len = ALIGN(rsp_len, 4);

 return rtsx_usb_transfer_data(ucr,
   usb_rcvbulkpipe(ucr->pusb_dev, EP_BULK_IN),
   ucr->rsp_buf, rsp_len, 0, ((void*)0), timeout);
}
