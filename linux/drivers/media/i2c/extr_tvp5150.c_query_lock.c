
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int lock; int regmap; scalar_t__ irq; } ;


 int TVP5150_STATUS_REG_1 ;
 int regmap_read (int ,int ,int*) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;

__attribute__((used)) static int query_lock(struct v4l2_subdev *sd)
{
 struct tvp5150 *decoder = to_tvp5150(sd);
 int status;

 if (decoder->irq)
  return decoder->lock;

 regmap_read(decoder->regmap, TVP5150_STATUS_REG_1, &status);


 return (status & 0x0e) == 0x0e;
}
