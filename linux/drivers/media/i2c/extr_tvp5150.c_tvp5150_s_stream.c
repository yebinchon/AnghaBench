
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tvp5150 {unsigned int oe; int regmap; scalar_t__ irq; int sd; scalar_t__ lock; } ;


 unsigned int TVP5150_INT_A_LOCK ;
 int TVP5150_INT_ENABLE_REG_A ;
 int TVP5150_MISC_CTL ;
 unsigned int TVP5150_MISC_CTL_CLOCK_OE ;
 unsigned int TVP5150_MISC_CTL_SYNC_OE ;
 unsigned int TVP5150_MISC_CTL_YCBCR_OE ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;
 int tvp5150_enable (struct v4l2_subdev*) ;
 int tvp5150_ev_fmt ;
 int v4l2_subdev_notify_event (int *,int *) ;

__attribute__((used)) static int tvp5150_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct tvp5150 *decoder = to_tvp5150(sd);
 unsigned int mask, val = 0, int_val = 0;

 mask = TVP5150_MISC_CTL_YCBCR_OE | TVP5150_MISC_CTL_SYNC_OE |
        TVP5150_MISC_CTL_CLOCK_OE;

 if (enable) {
  tvp5150_enable(sd);


  if (decoder->irq)
   val = decoder->lock ? decoder->oe : 0;
  else
   val = decoder->oe;
  int_val = TVP5150_INT_A_LOCK;
  v4l2_subdev_notify_event(&decoder->sd, &tvp5150_ev_fmt);
 }

 regmap_update_bits(decoder->regmap, TVP5150_MISC_CTL, mask, val);
 if (decoder->irq)

  regmap_update_bits(decoder->regmap, TVP5150_INT_ENABLE_REG_A,
       TVP5150_INT_A_LOCK, int_val);

 return 0;
}
