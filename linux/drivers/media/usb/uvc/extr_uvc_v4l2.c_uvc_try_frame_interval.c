
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uvc_frame {int bFrameIntervalType; scalar_t__* dwFrameInterval; } ;



__attribute__((used)) static u32 uvc_try_frame_interval(struct uvc_frame *frame, u32 interval)
{
 unsigned int i;

 if (frame->bFrameIntervalType) {
  u32 best = -1, dist;

  for (i = 0; i < frame->bFrameIntervalType; ++i) {
   dist = interval > frame->dwFrameInterval[i]
        ? interval - frame->dwFrameInterval[i]
        : frame->dwFrameInterval[i] - interval;

   if (dist > best)
    break;

   best = dist;
  }

  interval = frame->dwFrameInterval[i-1];
 } else {
  const u32 min = frame->dwFrameInterval[0];
  const u32 max = frame->dwFrameInterval[1];
  const u32 step = frame->dwFrameInterval[2];

  interval = min + (interval - min + step/2) / step * step;
  if (interval > max)
   interval = max;
 }

 return interval;
}
