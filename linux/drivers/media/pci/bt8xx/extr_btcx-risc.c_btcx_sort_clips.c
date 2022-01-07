
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ left; } ;
struct v4l2_clip {TYPE_1__ c; } ;


 int swap (struct v4l2_clip,struct v4l2_clip) ;

void
btcx_sort_clips(struct v4l2_clip *clips, unsigned int nclips)
{
 int i,j,n;

 if (nclips < 2)
  return;
 for (i = nclips-2; i >= 0; i--) {
  for (n = 0, j = 0; j <= i; j++) {
   if (clips[j].c.left > clips[j+1].c.left) {
    swap(clips[j], clips[j + 1]);
    n++;
   }
  }
  if (0 == n)
   break;
 }
}
