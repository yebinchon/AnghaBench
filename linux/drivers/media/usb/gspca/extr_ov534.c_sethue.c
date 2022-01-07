
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;
typedef int s16 ;


 scalar_t__ SENSOR_OV767x ;
 int fixp_cos16 (int ) ;
 int fixp_sin16 (int ) ;
 int sccb_reg_read (struct gspca_dev*,int) ;
 int sccb_reg_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static void sethue(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_OV767x) {

 } else {
  s16 huesin;
  s16 huecos;
  huesin = fixp_sin16(val) * 0x80 / 0x7fff;
  huecos = fixp_cos16(val) * 0x80 / 0x7fff;

  if (huesin < 0) {
   sccb_reg_write(gspca_dev, 0xab,
    sccb_reg_read(gspca_dev, 0xab) | 0x2);
   huesin = -huesin;
  } else {
   sccb_reg_write(gspca_dev, 0xab,
    sccb_reg_read(gspca_dev, 0xab) & ~0x2);

  }
  sccb_reg_write(gspca_dev, 0xa9, (u8)huecos);
  sccb_reg_write(gspca_dev, 0xaa, (u8)huesin);
 }
}
