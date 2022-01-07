
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sd {TYPE_2__* vflip; TYPE_1__* hflip; } ;
struct TYPE_6__ {int width; } ;
struct gspca_dev {TYPE_3__ pixfmt; } ;
struct TYPE_5__ {int val; } ;
struct TYPE_4__ {int val; } ;


 int D_CONF ;
 int MT9M111_PAGE_MAP ;
 int MT9M111_RMB_COLUMN_SKIP_2X ;
 int MT9M111_RMB_COLUMN_SKIP_4X ;
 int MT9M111_RMB_OVER_SIZED ;
 int MT9M111_RMB_ROW_SKIP_2X ;
 int MT9M111_RMB_ROW_SKIP_4X ;
 int MT9M111_SC_R_MODE_CONTEXT_B ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ) ;
 int m5602_write_sensor (struct sd*,int ,int*,int) ;

__attribute__((used)) static int mt9m111_set_hvflip(struct gspca_dev *gspca_dev)
{
 int err;
 u8 data[2] = {0x00, 0x00};
 struct sd *sd = (struct sd *) gspca_dev;
 int hflip;
 int vflip;

 gspca_dbg(gspca_dev, D_CONF, "Set hvflip to %d %d\n",
    sd->hflip->val, sd->vflip->val);


 hflip = !sd->hflip->val;
 vflip = !sd->vflip->val;


 err = m5602_write_sensor(sd, MT9M111_PAGE_MAP, data, 2);
 if (err < 0)
  return err;

 data[0] = MT9M111_RMB_OVER_SIZED;
 if (gspca_dev->pixfmt.width == 640) {
  data[1] = MT9M111_RMB_ROW_SKIP_2X |
     MT9M111_RMB_COLUMN_SKIP_2X |
     (hflip << 1) | vflip;
 } else {
  data[1] = MT9M111_RMB_ROW_SKIP_4X |
     MT9M111_RMB_COLUMN_SKIP_4X |
     (hflip << 1) | vflip;
 }
 err = m5602_write_sensor(sd, MT9M111_SC_R_MODE_CONTEXT_B,
     data, 2);
 return err;
}
