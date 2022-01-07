
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx23885_dev {int board; } ;




 int GP0_IO ;
 int cx_clear (int ,int) ;
 int cx_set (int ,int const) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tbs_card_init(struct cx23885_dev *dev)
{
 int i;
 static const u8 buf[] = {
  0xe0, 0x06, 0x66, 0x33, 0x65,
  0x01, 0x17, 0x06, 0xde};

 switch (dev->board) {
 case 129:
 case 128:
  cx_set(GP0_IO, 0x00070007);
  usleep_range(1000, 10000);
  cx_clear(GP0_IO, 2);
  usleep_range(1000, 10000);
  for (i = 0; i < 9 * 8; i++) {
   cx_clear(GP0_IO, 7);
   usleep_range(1000, 10000);
   cx_set(GP0_IO,
    ((buf[i >> 3] >> (7 - (i & 7))) & 1) | 4);
   usleep_range(1000, 10000);
  }
  cx_set(GP0_IO, 7);
  break;
 }
}
