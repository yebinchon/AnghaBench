
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cio2_queue {int format; } ;


 struct cio2_queue* file_to_cio2_queue (struct file*) ;

__attribute__((used)) static int cio2_v4l2_g_fmt(struct file *file, void *fh, struct v4l2_format *f)
{
 struct cio2_queue *q = file_to_cio2_queue(file);

 f->fmt.pix_mp = q->format;

 return 0;
}
