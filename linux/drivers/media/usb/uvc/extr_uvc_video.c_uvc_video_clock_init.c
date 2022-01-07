
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_clock {int size; int * samples; int lock; } ;
struct uvc_streaming {struct uvc_clock clock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmalloc_array (int,int,int ) ;
 int spin_lock_init (int *) ;
 int uvc_video_clock_reset (struct uvc_streaming*) ;

__attribute__((used)) static int uvc_video_clock_init(struct uvc_streaming *stream)
{
 struct uvc_clock *clock = &stream->clock;

 spin_lock_init(&clock->lock);
 clock->size = 32;

 clock->samples = kmalloc_array(clock->size, sizeof(*clock->samples),
           GFP_KERNEL);
 if (clock->samples == ((void*)0))
  return -ENOMEM;

 uvc_video_clock_reset(stream);

 return 0;
}
