
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct mt9v011 {int global_gain; int blue_bal; int red_bal; int exposure; } ;
typedef int s16 ;


 int R09_MT9V011_SHUTTER_WIDTH ;
 int R2B_MT9V011_GREEN_1_GAIN ;
 int R2C_MT9V011_BLUE_GAIN ;
 int R2D_MT9V011_RED_GAIN ;
 int R2E_MT9V011_GREEN_2_GAIN ;
 int calc_mt9v011_gain (int) ;
 int mt9v011_write (struct v4l2_subdev*,int ,int ) ;
 struct mt9v011* to_mt9v011 (struct v4l2_subdev*) ;

__attribute__((used)) static void set_balance(struct v4l2_subdev *sd)
{
 struct mt9v011 *core = to_mt9v011(sd);
 u16 green_gain, blue_gain, red_gain;
 u16 exposure;
 s16 bal;

 exposure = core->exposure;

 green_gain = calc_mt9v011_gain(core->global_gain);

 bal = core->global_gain;
 bal += (core->blue_bal * core->global_gain / (1 << 7));
 blue_gain = calc_mt9v011_gain(bal);

 bal = core->global_gain;
 bal += (core->red_bal * core->global_gain / (1 << 7));
 red_gain = calc_mt9v011_gain(bal);

 mt9v011_write(sd, R2B_MT9V011_GREEN_1_GAIN, green_gain);
 mt9v011_write(sd, R2E_MT9V011_GREEN_2_GAIN, green_gain);
 mt9v011_write(sd, R2C_MT9V011_BLUE_GAIN, blue_gain);
 mt9v011_write(sd, R2D_MT9V011_RED_GAIN, red_gain);
 mt9v011_write(sd, R09_MT9V011_SHUTTER_WIDTH, exposure);
}
