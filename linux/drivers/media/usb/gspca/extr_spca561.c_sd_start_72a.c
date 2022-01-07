
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd {int autogain; int contrast; int hue; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;


 int msleep (int) ;
 int reg_w_val (struct gspca_dev*,int,int) ;
 int rev72a_init_data1 ;
 int rev72a_init_sensor1 ;
 int rev72a_init_sensor2 ;
 int rev72a_reset ;
 int setautogain (struct gspca_dev*,int ) ;
 int setwhite (struct gspca_dev*,int ,int ) ;
 int v4l2_ctrl_g_ctrl (int ) ;
 int write_sensor_72a (struct gspca_dev*,int ) ;
 int write_vector (struct gspca_dev*,int ) ;

__attribute__((used)) static int sd_start_72a(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int Clck;
 int mode;

 write_vector(gspca_dev, rev72a_reset);
 msleep(200);
 write_vector(gspca_dev, rev72a_init_data1);
 write_sensor_72a(gspca_dev, rev72a_init_sensor1);

 mode = gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv;
 switch (mode) {
 default:
 case 0:
  Clck = 0x27;
  break;
 case 1:
  Clck = 0x25;
  break;
 case 2:
  Clck = 0x22;
  break;
 case 3:
  Clck = 0x21;
  break;
 }
 reg_w_val(gspca_dev, 0x8700, Clck);
 reg_w_val(gspca_dev, 0x8702, 0x81);
 reg_w_val(gspca_dev, 0x8500, mode);
 write_sensor_72a(gspca_dev, rev72a_init_sensor2);
 setwhite(gspca_dev, v4l2_ctrl_g_ctrl(sd->hue),
   v4l2_ctrl_g_ctrl(sd->contrast));

 setautogain(gspca_dev, v4l2_ctrl_g_ctrl(sd->autogain));
 reg_w_val(gspca_dev, 0x8112, 0x10 | 0x20);
 return 0;
}
