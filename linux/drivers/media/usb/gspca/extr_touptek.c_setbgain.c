
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int D_STREAM ;
 int GAIN_MAX ;
 int REG_BLUE_GAIN ;
 int gainify (int) ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,int,...) ;
 int reg_w (struct gspca_dev*,int,int ) ;

__attribute__((used)) static void setbgain(struct gspca_dev *gspca_dev,
  u16 gain, u16 global_gain)
{
 u16 normalized;

 normalized = global_gain +
  ((u32)global_gain) * gain / GAIN_MAX;
 if (normalized > GAIN_MAX) {
  gspca_dbg(gspca_dev, D_STREAM, "Truncating blue 0x%04X w/ value 0x%04X\n\n",
     GAIN_MAX, normalized);
  normalized = GAIN_MAX;
 }
 normalized = gainify(normalized);
 gspca_dbg(gspca_dev, D_STREAM, "gain B (0x%04X): 0x%04X w/ source 0x%04X\n\n",
    REG_BLUE_GAIN, normalized, gain);

 reg_w(gspca_dev, normalized, REG_BLUE_GAIN);
}
