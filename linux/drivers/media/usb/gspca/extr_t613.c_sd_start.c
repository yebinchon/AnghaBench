
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sd {int sensor; int freq; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; TYPE_2__ cam; } ;
struct additional_sensor_data {int* stream; } ;
struct TYPE_3__ {int priv; } ;


 int ARRAY_SIZE (int**) ;


 int msleep (int) ;
 int om6802_sensor_init (struct gspca_dev*) ;
 int poll_sensor (struct gspca_dev*) ;
 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,int) ;
 int reg_w_buf (struct gspca_dev*,int*,int) ;
 int reg_w_ixbuf (struct gspca_dev*,int,int const*,int) ;
 struct additional_sensor_data* sensor_data ;
 int setfreq (struct gspca_dev*,int ) ;
 int** tas5130a_sensor_init ;
 int v4l2_ctrl_g_ctrl (int ) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 const struct additional_sensor_data *sensor;
 int i, mode;
 u8 t2[] = { 0x07, 0x00, 0x0d, 0x60, 0x0e, 0x80 };
 static const u8 t3[] =
  { 0x07, 0x00, 0x88, 0x02, 0x06, 0x00, 0xe7, 0x01 };

 mode = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv;
 switch (mode) {
 case 0:
  break;
 case 1:
  t2[1] = 0x40;
  break;
 case 2:
  t2[1] = 0x10;
  break;
 case 3:
  t2[1] = 0x50;
  break;
 default:

  t2[1] = 0x20;
  break;
 }

 switch (sd->sensor) {
 case 129:
  om6802_sensor_init(gspca_dev);
  break;
 case 128:
  i = 0;
  for (;;) {
   reg_w_buf(gspca_dev, tas5130a_sensor_init[i],
      sizeof tas5130a_sensor_init[0]);
   if (i >= ARRAY_SIZE(tas5130a_sensor_init) - 1)
    break;
   i++;
  }
  reg_w(gspca_dev, 0x3c80);

  reg_w_buf(gspca_dev, tas5130a_sensor_init[i],
     sizeof tas5130a_sensor_init[0]);
  reg_w(gspca_dev, 0x3c80);
  break;
 }
 sensor = &sensor_data[sd->sensor];
 setfreq(gspca_dev, v4l2_ctrl_g_ctrl(sd->freq));
 reg_r(gspca_dev, 0x0012);
 reg_w_buf(gspca_dev, t2, sizeof t2);
 reg_w_ixbuf(gspca_dev, 0xb3, t3, sizeof t3);
 reg_w(gspca_dev, 0x0013);
 msleep(15);
 reg_w_buf(gspca_dev, sensor->stream, sizeof sensor->stream);
 reg_w_buf(gspca_dev, sensor->stream, sizeof sensor->stream);

 if (sd->sensor == 129)
  poll_sensor(gspca_dev);

 return 0;
}
