
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_ucr {int dummy; } ;


 int PPBUF_BASE2 ;
 int rtsx_usb_seq_write_register (struct rtsx_ucr*,int ,int ,int *) ;

int rtsx_usb_write_ppbuf(struct rtsx_ucr *ucr, u8 *buf, int buf_len)
{
 return rtsx_usb_seq_write_register(ucr, PPBUF_BASE2, (u16)buf_len, buf);
}
