
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct rvin_dev {int std; } ;
struct file {int dummy; } ;


 int ENOIOCTLCMD ;
 int dv_timings_cap ;
 int pad ;
 scalar_t__ v4l2_subdev_has_op (int ,int ,int ) ;
 struct rvin_dev* video_drvdata (struct file*) ;
 int vin_to_source (struct rvin_dev*) ;

__attribute__((used)) static int rvin_g_std(struct file *file, void *priv, v4l2_std_id *a)
{
 struct rvin_dev *vin = video_drvdata(file);

 if (v4l2_subdev_has_op(vin_to_source(vin), pad, dv_timings_cap))
  return -ENOIOCTLCMD;

 *a = vin->std;

 return 0;
}
