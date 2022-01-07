
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct rvin_dev {int dummy; } ;
struct file {int dummy; } ;


 int querystd ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *) ;
 int video ;
 struct rvin_dev* video_drvdata (struct file*) ;
 struct v4l2_subdev* vin_to_source (struct rvin_dev*) ;

__attribute__((used)) static int rvin_querystd(struct file *file, void *priv, v4l2_std_id *a)
{
 struct rvin_dev *vin = video_drvdata(file);
 struct v4l2_subdev *sd = vin_to_source(vin);

 return v4l2_subdev_call(sd, video, querystd, a);
}
