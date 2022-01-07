
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_ucr {int pusb_dev; int * cmd_buf; } ;


 int EINVAL ;
 int EP_BULK_IN ;
 int EP_BULK_OUT ;
 int SEQ_READ ;
 int round_down (int,int) ;
 int rtsx_usb_read_register (struct rtsx_ucr*,int,int *) ;
 int rtsx_usb_seq_cmd_hdr (struct rtsx_ucr*,int,int,int ) ;
 int rtsx_usb_transfer_data (struct rtsx_ucr*,int ,int *,int,int ,int *,int) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int rtsx_usb_seq_read_register(struct rtsx_ucr *ucr,
  u16 addr, u16 len, u8 *data)
{
 int i, ret;
 u16 rsp_len = round_down(len, 4);
 u16 res_len = len - rsp_len;

 if (!data)
  return -EINVAL;


 if (rsp_len) {
  rtsx_usb_seq_cmd_hdr(ucr, addr, len, SEQ_READ);
  ret = rtsx_usb_transfer_data(ucr,
    usb_sndbulkpipe(ucr->pusb_dev, EP_BULK_OUT),
    ucr->cmd_buf, 12, 0, ((void*)0), 100);
  if (ret)
   return ret;

  ret = rtsx_usb_transfer_data(ucr,
    usb_rcvbulkpipe(ucr->pusb_dev, EP_BULK_IN),
    data, rsp_len, 0, ((void*)0), 100);
  if (ret)
   return ret;
 }


 for (i = 0; i < res_len; i++) {
  ret = rtsx_usb_read_register(ucr, addr + rsp_len + i,
    data + rsp_len + i);
  if (ret)
   return ret;
 }

 return 0;
}
