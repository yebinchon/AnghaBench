
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_sliced_vbi_format {scalar_t__ service_set; scalar_t__** service_lines; } ;
struct tvp5150 {int regmap; } ;


 int TVP5150_FIFO_OUT_CTRL ;
 int TVP5150_FULL_FIELD_ENA ;
 int TVP5150_LINE_MODE_END ;
 int TVP5150_LINE_MODE_INI ;
 int regmap_write (int ,int,int) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;
 scalar_t__ tvp5150_set_vbi (struct v4l2_subdev*,scalar_t__,int,int,int) ;

__attribute__((used)) static int tvp5150_s_sliced_fmt(struct v4l2_subdev *sd, struct v4l2_sliced_vbi_format *svbi)
{
 struct tvp5150 *decoder = to_tvp5150(sd);
 int i;

 if (svbi->service_set != 0) {
  for (i = 0; i <= 23; i++) {
   svbi->service_lines[1][i] = 0;
   svbi->service_lines[0][i] =
    tvp5150_set_vbi(sd, svbi->service_lines[0][i],
      0xf0, i, 3);
  }

  regmap_write(decoder->regmap, TVP5150_FIFO_OUT_CTRL, 1);
 } else {

  regmap_write(decoder->regmap, TVP5150_FIFO_OUT_CTRL, 0);


  regmap_write(decoder->regmap, TVP5150_FULL_FIELD_ENA, 0);


  for (i = TVP5150_LINE_MODE_INI; i <= TVP5150_LINE_MODE_END; i++)
   regmap_write(decoder->regmap, i, 0xff);
 }
 return 0;
}
