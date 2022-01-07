
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct rtsx_ucr {scalar_t__ cmd_buf; int pusb_dev; } ;


 scalar_t__ ALIGN (scalar_t__,int) ;
 int EINVAL ;
 int EP_BULK_OUT ;
 scalar_t__ IOBUF_SIZE ;
 int SEQ_WRITE ;
 scalar_t__ SEQ_WRITE_DATA_OFFSET ;
 int memcpy (scalar_t__,int *,scalar_t__) ;
 int rtsx_usb_seq_cmd_hdr (struct rtsx_ucr*,scalar_t__,scalar_t__,int ) ;
 int rtsx_usb_transfer_data (struct rtsx_ucr*,int ,scalar_t__,scalar_t__,int ,int *,int) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int rtsx_usb_seq_write_register(struct rtsx_ucr *ucr,
  u16 addr, u16 len, u8 *data)
{
 u16 cmd_len = ALIGN(SEQ_WRITE_DATA_OFFSET + len, 4);

 if (!data)
  return -EINVAL;

 if (cmd_len > IOBUF_SIZE)
  return -EINVAL;

 rtsx_usb_seq_cmd_hdr(ucr, addr, len, SEQ_WRITE);
 memcpy(ucr->cmd_buf + SEQ_WRITE_DATA_OFFSET, data, len);

 return rtsx_usb_transfer_data(ucr,
   usb_sndbulkpipe(ucr->pusb_dev, EP_BULK_OUT),
   ucr->cmd_buf, cmd_len, 0, ((void*)0), 100);
}
