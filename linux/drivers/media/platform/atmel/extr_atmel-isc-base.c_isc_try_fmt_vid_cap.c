
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct isc_device {int dummy; } ;
struct file {int dummy; } ;


 int isc_try_fmt (struct isc_device*,struct v4l2_format*,int *) ;
 struct isc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int isc_try_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct isc_device *isc = video_drvdata(file);

 return isc_try_fmt(isc, f, ((void*)0));
}
