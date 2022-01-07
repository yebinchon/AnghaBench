
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {scalar_t__ type; int freq; int jpegqual; scalar_t__ blocks_left; } ;
struct TYPE_2__ {int member_0; int member_1; } ;
struct jlj_command {int member_1; int delay; scalar_t__ ack_wanted; int instruction; int member_2; TYPE_1__ member_0; } ;
struct gspca_dev {scalar_t__ usb_err; int curr_mode; } ;


 int ARRAY_SIZE (struct jlj_command*) ;
 int JEILINJ_CMD_DELAY ;
 scalar_t__ SPORTSCAM_DV15 ;
 int SPORTSCAM_DV15_CMD_SIZE ;
 int gspca_err (struct gspca_dev*,char*) ;
 int jlj_read1 (struct gspca_dev*,int*) ;
 int jlj_write2 (struct gspca_dev*,int ) ;
 int msleep (int) ;
 int setcamquality (struct gspca_dev*,int ) ;
 int setfreq (struct gspca_dev*,int ) ;
 int v4l2_ctrl_g_ctrl (int ) ;

__attribute__((used)) static int jlj_start(struct gspca_dev *gspca_dev)
{
 int i;
 int start_commands_size;
 u8 response = 0xff;
 struct sd *sd = (struct sd *) gspca_dev;
 struct jlj_command start_commands[] = {
  {{0x71, 0x81}, 0, 0},
  {{0x70, 0x05}, 0, JEILINJ_CMD_DELAY},
  {{0x95, 0x70}, 1, 0},
  {{0x71, 0x81 - gspca_dev->curr_mode}, 0, 0},
  {{0x70, 0x04}, 0, JEILINJ_CMD_DELAY},
  {{0x95, 0x70}, 1, 0},
  {{0x71, 0x00}, 0, 0},
  {{0x70, 0x08}, 0, JEILINJ_CMD_DELAY},
  {{0x95, 0x70}, 1, 0},

  {{0x94, 0x02}, 0, 0},
  {{0xde, 0x24}, 0, 0},
  {{0x94, 0x02}, 0, 0},
  {{0xdd, 0xf0}, 0, 0},
  {{0x94, 0x02}, 0, 0},
  {{0xe3, 0x2c}, 0, 0},
  {{0x94, 0x02}, 0, 0},
  {{0xe4, 0x00}, 0, 0},
  {{0x94, 0x02}, 0, 0},
  {{0xe5, 0x00}, 0, 0},
  {{0x94, 0x02}, 0, 0},
  {{0xe6, 0x2c}, 0, 0},
  {{0x94, 0x03}, 0, 0},
  {{0xaa, 0x00}, 0, 0}
 };

 sd->blocks_left = 0;



 if (sd->type == SPORTSCAM_DV15)
  start_commands_size = 9;
 else
  start_commands_size = ARRAY_SIZE(start_commands);

 for (i = 0; i < start_commands_size; i++) {
  jlj_write2(gspca_dev, start_commands[i].instruction);
  if (start_commands[i].delay)
   msleep(start_commands[i].delay);
  if (start_commands[i].ack_wanted)
   jlj_read1(gspca_dev, &response);
 }
 setcamquality(gspca_dev, v4l2_ctrl_g_ctrl(sd->jpegqual));
 msleep(2);
 setfreq(gspca_dev, v4l2_ctrl_g_ctrl(sd->freq));
 if (gspca_dev->usb_err < 0)
  gspca_err(gspca_dev, "Start streaming command failed\n");
 return gspca_dev->usb_err;
}
