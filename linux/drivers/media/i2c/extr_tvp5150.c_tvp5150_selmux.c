
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dev; } ;
struct tvp5150 {int dev_id; int rom_ver; int input; int regmap; int output; int enable; } ;




 int TVP5150_MISC_CTL ;
 unsigned int TVP5150_MISC_CTL_GPCL ;
 unsigned int TVP5150_MISC_CTL_HVLK ;
 int TVP5150_OP_MODE_CTL ;

 int TVP5150_VD_IN_SRC_SEL_1 ;
 int debug ;
 int dev_dbg_lvl (int ,int,int ,char*,int,int ,int,int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int regmap_write (int ,int ,int) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;

__attribute__((used)) static void tvp5150_selmux(struct v4l2_subdev *sd)
{
 int opmode = 0;
 struct tvp5150 *decoder = to_tvp5150(sd);
 unsigned int mask, val;
 int input = 0;


 if ((decoder->dev_id == 0x5150 && decoder->rom_ver == 0x0400) ||
     (decoder->dev_id == 0x5151 && decoder->rom_ver == 0x0100)) {
  if (!decoder->enable)
   input = 8;
 }

 switch (decoder->input) {
 case 129:
  input |= 2;

 case 130:
  break;
 case 128:
 default:
  input |= 1;
  break;
 }

 dev_dbg_lvl(sd->dev, 1, debug, "Selecting video route: route input=%i, output=%i => tvp5150 input=%i, opmode=%i\n",
   decoder->input, decoder->output,
   input, opmode);

 regmap_write(decoder->regmap, TVP5150_OP_MODE_CTL, opmode);
 regmap_write(decoder->regmap, TVP5150_VD_IN_SRC_SEL_1, input);
 mask = TVP5150_MISC_CTL_GPCL | TVP5150_MISC_CTL_HVLK;
 if (decoder->input == 128)
  val = TVP5150_MISC_CTL_HVLK;
 else
  val = TVP5150_MISC_CTL_GPCL;
 regmap_update_bits(decoder->regmap, TVP5150_MISC_CTL, mask, val);
}
