
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct rvin_dev {int std; } ;
struct file {int dummy; } ;


 int rvin_reset_format (struct rvin_dev*) ;
 int s_std ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 int video ;
 struct rvin_dev* video_drvdata (struct file*) ;
 int vin_to_source (struct rvin_dev*) ;

__attribute__((used)) static int rvin_s_std(struct file *file, void *priv, v4l2_std_id a)
{
 struct rvin_dev *vin = video_drvdata(file);
 int ret;

 ret = v4l2_subdev_call(vin_to_source(vin), video, s_std, a);
 if (ret < 0)
  return ret;

 vin->std = a;


 return rvin_reset_format(vin);
}
