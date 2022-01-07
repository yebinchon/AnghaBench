
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int regmap; } ;


 int regmap_read (int ,unsigned char,int*) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp5150_read(struct v4l2_subdev *sd, unsigned char addr)
{
 struct tvp5150 *decoder = to_tvp5150(sd);
 int ret, val;

 ret = regmap_read(decoder->regmap, addr, &val);
 if (ret < 0)
  return ret;

 return val;
}
