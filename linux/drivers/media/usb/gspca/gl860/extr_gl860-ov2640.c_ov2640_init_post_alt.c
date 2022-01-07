
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; } ;
typedef size_t s32 ;
struct TYPE_3__ {size_t priv; } ;


 int ARRAY_SIZE (int ) ;




 int common (struct gspca_dev*) ;
 int ctrl_out (struct gspca_dev*,int,int,int,int,int,int *) ;
 int * dat_1280 ;
 int * dat_1600 ;
 int * dat_640 ;
 int * dat_800 ;
 int * dat_post ;
 size_t fetch_validx (struct gspca_dev*,int ,int ) ;
 int keep_on_fetching_validx (struct gspca_dev*,int ,int ,size_t) ;
 int ov2640_camera_settings (struct gspca_dev*) ;
 int tbl_640 ;
 int tbl_800 ;
 int tbl_big1 ;
 int tbl_big2 ;
 int tbl_big3 ;
 int tbl_sensor_settings_common1 ;
 int tbl_sensor_settings_common2 ;

__attribute__((used)) static int ov2640_init_post_alt(struct gspca_dev *gspca_dev)
{
 s32 reso = gspca_dev->cam.cam_mode[(s32) gspca_dev->curr_mode].priv;
 s32 n;

 ctrl_out(gspca_dev, 0x40, 5, 0x0001, 0x0000, 0, ((void*)0));

 n = fetch_validx(gspca_dev, tbl_sensor_settings_common1,
   ARRAY_SIZE(tbl_sensor_settings_common1));
 ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, dat_post);
 common(gspca_dev);
 keep_on_fetching_validx(gspca_dev, tbl_sensor_settings_common1,
    ARRAY_SIZE(tbl_sensor_settings_common1), n);

 switch (reso) {
 case 129:
  n = fetch_validx(gspca_dev, tbl_640, ARRAY_SIZE(tbl_640));
  ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, dat_640);
  break;

 case 128:
  n = fetch_validx(gspca_dev, tbl_800, ARRAY_SIZE(tbl_800));
  ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, dat_800);
  break;

 case 130:
 case 131:
  n = fetch_validx(gspca_dev, tbl_big1, ARRAY_SIZE(tbl_big1));

  if (reso == 131) {
   n = fetch_validx(gspca_dev, tbl_big2,
     ARRAY_SIZE(tbl_big2));
  } else {
   ctrl_out(gspca_dev, 0x40, 1, 0x601d, 0x0086, 0, ((void*)0));
   ctrl_out(gspca_dev, 0x40, 1, 0x6001, 0x00d7, 0, ((void*)0));
   ctrl_out(gspca_dev, 0x40, 1, 0x6082, 0x00d3, 0, ((void*)0));
  }

  n = fetch_validx(gspca_dev, tbl_big3, ARRAY_SIZE(tbl_big3));

  if (reso == 131) {
   ctrl_out(gspca_dev, 0x40, 1, 0x6001, 0x00ff, 0, ((void*)0));
   ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200,
     12, dat_1280);
  } else {
   ctrl_out(gspca_dev, 0x40, 1, 0x6020, 0x008c, 0, ((void*)0));
   ctrl_out(gspca_dev, 0x40, 1, 0x6001, 0x00ff, 0, ((void*)0));
   ctrl_out(gspca_dev, 0x40, 1, 0x6076, 0x0018, 0, ((void*)0));
   ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200,
     12, dat_1600);
  }
  break;
 }

 n = fetch_validx(gspca_dev, tbl_sensor_settings_common2,
   ARRAY_SIZE(tbl_sensor_settings_common2));

 ov2640_camera_settings(gspca_dev);

 return 0;
}
