
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct tm6000_fh* priv_data; } ;
struct tm6000_fh {int width; int height; TYPE_1__* fmt; } ;
struct TYPE_2__ {int depth; } ;


 unsigned int TM6000_DEF_BUF ;
 unsigned int TM6000_MIN_BUF ;
 int vid_limit ;

__attribute__((used)) static int
buffer_setup(struct videobuf_queue *vq, unsigned int *count, unsigned int *size)
{
 struct tm6000_fh *fh = vq->priv_data;

 *size = fh->fmt->depth * fh->width * fh->height >> 3;
 if (0 == *count)
  *count = TM6000_DEF_BUF;

 if (*count < TM6000_MIN_BUF)
  *count = TM6000_MIN_BUF;

 while (*size * *count > vid_limit * 1024 * 1024)
  (*count)--;

 return 0;
}
