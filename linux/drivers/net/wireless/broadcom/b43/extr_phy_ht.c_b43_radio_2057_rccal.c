
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int wl; } ;


 int R2059_RCCAL_DONE_OSCCAP ;
 int R2059_RCCAL_MASTER ;
 int R2059_RCCAL_START_R1_Q1_P1 ;
 int R2059_RCCAL_TRC0 ;
 int R2059_RCCAL_X1 ;
 int b43_radio_mask (struct b43_wldev*,int ,int) ;
 int b43_radio_wait_value (struct b43_wldev*,int ,int,int,int,int) ;
 int b43_radio_write (struct b43_wldev*,int ,int const) ;
 int b43err (int ,char*) ;

__attribute__((used)) static void b43_radio_2057_rccal(struct b43_wldev *dev)
{
 static const u16 radio_values[3][2] = {
  { 0x61, 0xE9 }, { 0x69, 0xD5 }, { 0x73, 0x99 },
 };
 int i;

 for (i = 0; i < 3; i++) {
  b43_radio_write(dev, R2059_RCCAL_MASTER, radio_values[i][0]);
  b43_radio_write(dev, R2059_RCCAL_X1, 0x6E);
  b43_radio_write(dev, R2059_RCCAL_TRC0, radio_values[i][1]);


  b43_radio_write(dev, R2059_RCCAL_START_R1_Q1_P1, 0x55);


  if (!b43_radio_wait_value(dev, R2059_RCCAL_DONE_OSCCAP, 2, 2,
       500, 5000000))
   b43err(dev->wl, "Radio 0x2059 rccal timeout\n");


  b43_radio_write(dev, R2059_RCCAL_START_R1_Q1_P1, 0x15);
 }

 b43_radio_mask(dev, R2059_RCCAL_MASTER, ~0x1);
}
