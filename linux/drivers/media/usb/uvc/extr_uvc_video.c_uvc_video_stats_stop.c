
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stop_ts; } ;
struct TYPE_4__ {TYPE_1__ stream; } ;
struct uvc_streaming {TYPE_2__ stats; } ;


 int ktime_get () ;

__attribute__((used)) static void uvc_video_stats_stop(struct uvc_streaming *stream)
{
 stream->stats.stream.stop_ts = ktime_get();
}
