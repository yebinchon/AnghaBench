
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sd {TYPE_2__* vflip; TYPE_1__* hflip; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;


 int D_CONF ;
 int S5K4AA_COLSTART_LO ;
 int S5K4AA_PAGE_MAP ;
 int S5K4AA_PAGE_MAP_2 ;
 int S5K4AA_READ_MODE ;
 int S5K4AA_ROWSTART_LO ;
 scalar_t__ dmi_check_system (int ) ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,int) ;
 int m5602_read_sensor (struct sd*,int ,int*,int) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;
 int s5k4aa_vflip_dmi_table ;

__attribute__((used)) static int s5k4aa_set_hvflip(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u8 data = S5K4AA_PAGE_MAP_2;
 int err;
 int hflip = sd->hflip->val;
 int vflip = sd->vflip->val;

 gspca_dbg(gspca_dev, D_CONF, "Set hvflip %d %d\n", hflip, vflip);
 err = m5602_write_sensor(sd, S5K4AA_PAGE_MAP, &data, 1);
 if (err < 0)
  return err;

 err = m5602_read_sensor(sd, S5K4AA_READ_MODE, &data, 1);
 if (err < 0)
  return err;

 if (dmi_check_system(s5k4aa_vflip_dmi_table)) {
  hflip = !hflip;
  vflip = !vflip;
 }

 data = (data & 0x7f) | (vflip << 7) | (hflip << 6);
 err = m5602_write_sensor(sd, S5K4AA_READ_MODE, &data, 1);
 if (err < 0)
  return err;

 err = m5602_read_sensor(sd, S5K4AA_COLSTART_LO, &data, 1);
 if (err < 0)
  return err;
 if (hflip)
  data &= 0xfe;
 else
  data |= 0x01;
 err = m5602_write_sensor(sd, S5K4AA_COLSTART_LO, &data, 1);
 if (err < 0)
  return err;

 err = m5602_read_sensor(sd, S5K4AA_ROWSTART_LO, &data, 1);
 if (err < 0)
  return err;
 if (vflip)
  data &= 0xfe;
 else
  data |= 0x01;
 err = m5602_write_sensor(sd, S5K4AA_ROWSTART_LO, &data, 1);
 if (err < 0)
  return err;

 return 0;
}
