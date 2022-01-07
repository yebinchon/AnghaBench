
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imon_context {int display_type; int product; int usb_tx_buf; } ;


 int ENODEV ;
 int IMON_CLOCK_ENABLE_PACKETS ;


 int memcpy (int ,unsigned char*,int) ;
 int pr_err (char*,...) ;
 int send_packet (struct imon_context*) ;

__attribute__((used)) static int send_set_imon_clock(struct imon_context *ictx,
          unsigned int year, unsigned int month,
          unsigned int day, unsigned int dow,
          unsigned int hour, unsigned int minute,
          unsigned int second)
{
 unsigned char clock_enable_pkt[IMON_CLOCK_ENABLE_PACKETS][8];
 int retval = 0;
 int i;

 if (!ictx) {
  pr_err("no context for device\n");
  return -ENODEV;
 }

 switch (ictx->display_type) {
 case 129:
  clock_enable_pkt[0][0] = 0x80;
  clock_enable_pkt[0][1] = year;
  clock_enable_pkt[0][2] = month-1;
  clock_enable_pkt[0][3] = day;
  clock_enable_pkt[0][4] = hour;
  clock_enable_pkt[0][5] = minute;
  clock_enable_pkt[0][6] = second;

  clock_enable_pkt[1][0] = 0x80;
  clock_enable_pkt[1][1] = 0;
  clock_enable_pkt[1][2] = 0;
  clock_enable_pkt[1][3] = 0;
  clock_enable_pkt[1][4] = 0;
  clock_enable_pkt[1][5] = 0;
  clock_enable_pkt[1][6] = 0;

  if (ictx->product == 0xffdc) {
   clock_enable_pkt[0][7] = 0x50;
   clock_enable_pkt[1][7] = 0x51;
  } else {
   clock_enable_pkt[0][7] = 0x88;
   clock_enable_pkt[1][7] = 0x8a;
  }

  break;

 case 128:
  clock_enable_pkt[0][0] = year;
  clock_enable_pkt[0][1] = month-1;
  clock_enable_pkt[0][2] = day;
  clock_enable_pkt[0][3] = dow;
  clock_enable_pkt[0][4] = hour;
  clock_enable_pkt[0][5] = minute;
  clock_enable_pkt[0][6] = second;
  clock_enable_pkt[0][7] = 0x40;

  clock_enable_pkt[1][0] = 0;
  clock_enable_pkt[1][1] = 0;
  clock_enable_pkt[1][2] = 1;
  clock_enable_pkt[1][3] = 0;
  clock_enable_pkt[1][4] = 0;
  clock_enable_pkt[1][5] = 0;
  clock_enable_pkt[1][6] = 0;
  clock_enable_pkt[1][7] = 0x42;

  break;

 default:
  return -ENODEV;
 }

 for (i = 0; i < IMON_CLOCK_ENABLE_PACKETS; i++) {
  memcpy(ictx->usb_tx_buf, clock_enable_pkt[i], 8);
  retval = send_packet(ictx);
  if (retval) {
   pr_err("send_packet failed for packet %d\n", i);
   break;
  }
 }

 return retval;
}
