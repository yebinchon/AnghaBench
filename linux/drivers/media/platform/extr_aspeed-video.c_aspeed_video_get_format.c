
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct aspeed_video {int pix_fmt; } ;


 struct aspeed_video* video_drvdata (struct file*) ;

__attribute__((used)) static int aspeed_video_get_format(struct file *file, void *fh,
       struct v4l2_format *f)
{
 struct aspeed_video *video = video_drvdata(file);

 f->fmt.pix = video->pix_fmt;

 return 0;
}
