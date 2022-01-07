
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct solo_dev {scalar_t__ video_type; int nr_chans; } ;


 int DEFAULT_HACTIVE_NTSC ;
 int DEFAULT_HACTIVE_PAL ;
 int DEFAULT_HDELAY_NTSC ;
 int DEFAULT_HDELAY_PAL ;
 int DEFAULT_VACTIVE_NTSC ;
 int DEFAULT_VACTIVE_PAL ;
 int DEFAULT_VDELAY_NTSC ;
 int DEFAULT_VDELAY_PAL ;
 int SOLO_I2C_TW ;
 scalar_t__ SOLO_VO_FMT_TYPE_NTSC ;
 int TW_CHIP_OFFSET_ADDR (int) ;
 int solo_i2c_writebyte (struct solo_dev*,int ,int,int,int) ;

__attribute__((used)) static int tw2815_setup(struct solo_dev *solo_dev, u8 dev_addr)
{
 u8 tbl_ntsc_tw2815_common[] = {
  0x00, 0xc8, 0x20, 0xd0, 0x06, 0xf0, 0x08, 0x80,
  0x80, 0x80, 0x80, 0x02, 0x06, 0x00, 0x11,
 };

 u8 tbl_pal_tw2815_common[] = {
  0x00, 0x88, 0x20, 0xd0, 0x05, 0x20, 0x28, 0x80,
  0x80, 0x80, 0x80, 0x82, 0x06, 0x00, 0x11,
 };

 u8 tbl_tw2815_sfr[] = {
  0x00, 0x00, 0x00, 0xc0, 0x45, 0xa0, 0xd0, 0x2f,
  0x64, 0x80, 0x80, 0x82, 0x82, 0x00, 0x00, 0x00,
  0x00, 0x0f, 0x05, 0x00, 0x00, 0x80, 0x06, 0x00,
  0x00, 0x00, 0x00, 0xff, 0x8f, 0x00, 0x00, 0x00,
  0x88, 0x88, 0xc0, 0x00, 0x20, 0x64, 0xa8, 0xec,
  0x31, 0x75, 0xb9, 0xfd, 0x00, 0x00, 0x88, 0x88,
  0x88, 0x11, 0x00, 0x88, 0x88, 0x00,
 };
 u8 *tbl_tw2815_common;
 int i;
 int ch;

 tbl_ntsc_tw2815_common[0x06] = 0;


 tbl_ntsc_tw2815_common[0x02] = DEFAULT_HDELAY_NTSC & 0xff;
 tbl_ntsc_tw2815_common[0x06] |= 0x03 & (DEFAULT_HDELAY_NTSC >> 8);


 tbl_ntsc_tw2815_common[0x03] = DEFAULT_HACTIVE_NTSC & 0xff;
 tbl_ntsc_tw2815_common[0x06] |=
  ((0x03 & (DEFAULT_HACTIVE_NTSC >> 8)) << 2);


 tbl_ntsc_tw2815_common[0x04] = DEFAULT_VDELAY_NTSC & 0xff;
 tbl_ntsc_tw2815_common[0x06] |=
  ((0x01 & (DEFAULT_VDELAY_NTSC >> 8)) << 4);


 tbl_ntsc_tw2815_common[0x05] = DEFAULT_VACTIVE_NTSC & 0xff;
 tbl_ntsc_tw2815_common[0x06] |=
  ((0x01 & (DEFAULT_VACTIVE_NTSC >> 8)) << 5);

 tbl_pal_tw2815_common[0x06] = 0;


 tbl_pal_tw2815_common[0x02] = DEFAULT_HDELAY_PAL & 0xff;
 tbl_pal_tw2815_common[0x06] |= 0x03 & (DEFAULT_HDELAY_PAL >> 8);


 tbl_pal_tw2815_common[0x03] = DEFAULT_HACTIVE_PAL & 0xff;
 tbl_pal_tw2815_common[0x06] |=
  ((0x03 & (DEFAULT_HACTIVE_PAL >> 8)) << 2);


 tbl_pal_tw2815_common[0x04] = DEFAULT_VDELAY_PAL & 0xff;
 tbl_pal_tw2815_common[0x06] |=
  ((0x01 & (DEFAULT_VDELAY_PAL >> 8)) << 4);


 tbl_pal_tw2815_common[0x05] = DEFAULT_VACTIVE_PAL & 0xff;
 tbl_pal_tw2815_common[0x06] |=
  ((0x01 & (DEFAULT_VACTIVE_PAL >> 8)) << 5);

 tbl_tw2815_common =
     (solo_dev->video_type == SOLO_VO_FMT_TYPE_NTSC) ?
      tbl_ntsc_tw2815_common : tbl_pal_tw2815_common;


 tbl_tw2815_common[0x0d] |= 0x04;


 tbl_tw2815_sfr[0x62 - 0x40] &= ~(3 << 6);

 if (solo_dev->nr_chans == 4) {
  tbl_tw2815_sfr[0x63 - 0x40] |= 1;
  tbl_tw2815_sfr[0x62 - 0x40] |= 3 << 6;
 } else if (solo_dev->nr_chans == 8) {
  tbl_tw2815_sfr[0x63 - 0x40] |= 2;
  if (dev_addr == TW_CHIP_OFFSET_ADDR(0))
   tbl_tw2815_sfr[0x62 - 0x40] |= 1 << 6;
  else if (dev_addr == TW_CHIP_OFFSET_ADDR(1))
   tbl_tw2815_sfr[0x62 - 0x40] |= 2 << 6;
 } else if (solo_dev->nr_chans == 16) {
  tbl_tw2815_sfr[0x63 - 0x40] |= 3;
  if (dev_addr == TW_CHIP_OFFSET_ADDR(0))
   tbl_tw2815_sfr[0x62 - 0x40] |= 1 << 6;
  else if (dev_addr == TW_CHIP_OFFSET_ADDR(1))
   tbl_tw2815_sfr[0x62 - 0x40] |= 0 << 6;
  else if (dev_addr == TW_CHIP_OFFSET_ADDR(2))
   tbl_tw2815_sfr[0x62 - 0x40] |= 0 << 6;
  else if (dev_addr == TW_CHIP_OFFSET_ADDR(3))
   tbl_tw2815_sfr[0x62 - 0x40] |= 2 << 6;
 }





 tbl_tw2815_sfr[0x62 - 0x40] |= 0 << 2;
 tbl_tw2815_sfr[0x6c - 0x40] |= 0 << 2;


 tbl_tw2815_sfr[0x6c - 0x40] |= 1 << 5;


 tbl_tw2815_sfr[0x5c - 0x40] |= 1 << 5;


 tbl_tw2815_sfr[0x70 - 0x40] |= 0xff;

 tbl_tw2815_sfr[0x71 - 0x40] |= 0x10;
 tbl_tw2815_sfr[0x6d - 0x40] |= 0x0f;



 for (ch = 0; ch < 4; ch++) {
  tbl_tw2815_common[0x0d] &= ~3;
  switch (ch) {
  case 0:
   tbl_tw2815_common[0x0d] |= 0x21;
   break;
  case 1:
   tbl_tw2815_common[0x0d] |= 0x20;
   break;
  case 2:
   tbl_tw2815_common[0x0d] |= 0x23;
   break;
  case 3:
   tbl_tw2815_common[0x0d] |= 0x22;
   break;
  }

  for (i = 0; i < 0x0f; i++) {
   if (i == 0x00)
    continue;
   solo_i2c_writebyte(solo_dev, SOLO_I2C_TW,
        dev_addr, (ch * 0x10) + i,
        tbl_tw2815_common[i]);
  }
 }

 for (i = 0x40; i < 0x76; i++) {

  if (i == 0x40 || i == 0x59 || i == 0x5a ||
      i == 0x5d || i == 0x5e || i == 0x5f)
   continue;

  solo_i2c_writebyte(solo_dev, SOLO_I2C_TW, dev_addr, i,
           tbl_tw2815_sfr[i - 0x40]);
 }

 return 0;
}
