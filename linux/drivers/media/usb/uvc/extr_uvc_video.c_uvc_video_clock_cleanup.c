
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * samples; } ;
struct uvc_streaming {TYPE_1__ clock; } ;


 int kfree (int *) ;

__attribute__((used)) static void uvc_video_clock_cleanup(struct uvc_streaming *stream)
{
 kfree(stream->clock.samples);
 stream->clock.samples = ((void*)0);
}
