
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct vpfe_device {struct v4l2_format fmt; } ;
struct file {int dummy; } ;


 struct vpfe_device* video_drvdata (struct file*) ;
 int vpfe_dbg (int,struct vpfe_device*,char*) ;

__attribute__((used)) static int vpfe_g_fmt(struct file *file, void *priv,
        struct v4l2_format *fmt)
{
 struct vpfe_device *vpfe = video_drvdata(file);

 vpfe_dbg(2, vpfe, "vpfe_g_fmt\n");

 *fmt = vpfe->fmt;

 return 0;
}
