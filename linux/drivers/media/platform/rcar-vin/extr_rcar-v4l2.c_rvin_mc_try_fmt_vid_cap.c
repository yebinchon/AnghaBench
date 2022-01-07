
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct rvin_dev {int dummy; } ;
struct file {int dummy; } ;


 int rvin_mc_try_format (struct rvin_dev*,int *) ;
 struct rvin_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int rvin_mc_try_fmt_vid_cap(struct file *file, void *priv,
       struct v4l2_format *f)
{
 struct rvin_dev *vin = video_drvdata(file);

 rvin_mc_try_format(vin, &f->fmt.pix);

 return 0;
}
