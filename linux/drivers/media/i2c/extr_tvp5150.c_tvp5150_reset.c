
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int hdl; scalar_t__ irq; struct regmap* regmap; } ;
struct regmap {int dummy; } ;


 int TVP5150_CONF_SHARED_PIN ;
 int TVP5150_INTT_CONFIG_REG_B ;
 int TVP5150_INT_CONF ;
 int TVP5150_VDPOE ;
 int regmap_write (struct regmap*,int ,int) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;
 int tvp5150_init_default ;
 int tvp5150_selmux (struct v4l2_subdev*) ;
 int tvp5150_vdp_init (struct v4l2_subdev*) ;
 int tvp5150_write_inittab (struct v4l2_subdev*,int ) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int tvp5150_reset(struct v4l2_subdev *sd, u32 val)
{
 struct tvp5150 *decoder = to_tvp5150(sd);
 struct regmap *map = decoder->regmap;


 tvp5150_write_inittab(sd, tvp5150_init_default);

 if (decoder->irq) {

  regmap_write(map, TVP5150_CONF_SHARED_PIN, 0x0);

  regmap_write(map, TVP5150_INT_CONF, TVP5150_VDPOE | 0x1);
  regmap_write(map, TVP5150_INTT_CONFIG_REG_B, 0x1);
 } else {

  regmap_write(map, TVP5150_CONF_SHARED_PIN, 0x2);

  regmap_write(map, TVP5150_INT_CONF, TVP5150_VDPOE);
  regmap_write(map, TVP5150_INTT_CONFIG_REG_B, 0x0);
 }


 tvp5150_vdp_init(sd);


 tvp5150_selmux(sd);


 v4l2_ctrl_handler_setup(&decoder->hdl);

 return 0;
}
