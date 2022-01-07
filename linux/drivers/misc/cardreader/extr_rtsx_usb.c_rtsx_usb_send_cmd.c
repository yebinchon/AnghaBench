
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct rtsx_ucr {int cmd_idx; void** cmd_buf; int pusb_dev; } ;


 scalar_t__ CMD_OFFSET ;
 size_t CNT_H ;
 size_t CNT_L ;
 int EP_BULK_OUT ;
 size_t STAGE_FLAG ;
 int rtsx_usb_clear_fsm_err (struct rtsx_ucr*) ;
 int rtsx_usb_transfer_data (struct rtsx_ucr*,int ,void**,scalar_t__,int ,int *,int) ;
 int usb_sndbulkpipe (int ,int ) ;

int rtsx_usb_send_cmd(struct rtsx_ucr *ucr, u8 flag, int timeout)
{
 int ret;

 ucr->cmd_buf[CNT_H] = (u8)(ucr->cmd_idx >> 8);
 ucr->cmd_buf[CNT_L] = (u8)(ucr->cmd_idx);
 ucr->cmd_buf[STAGE_FLAG] = flag;

 ret = rtsx_usb_transfer_data(ucr,
   usb_sndbulkpipe(ucr->pusb_dev, EP_BULK_OUT),
   ucr->cmd_buf, ucr->cmd_idx * 4 + CMD_OFFSET,
   0, ((void*)0), timeout);
 if (ret) {
  rtsx_usb_clear_fsm_err(ucr);
  return ret;
 }

 return 0;
}
