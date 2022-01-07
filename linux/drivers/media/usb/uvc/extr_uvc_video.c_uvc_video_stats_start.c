
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int min_sof; } ;
struct TYPE_4__ {TYPE_1__ stream; } ;
struct uvc_streaming {TYPE_2__ stats; } ;


 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void uvc_video_stats_start(struct uvc_streaming *stream)
{
 memset(&stream->stats, 0, sizeof(stream->stats));
 stream->stats.stream.min_sof = 2048;
}
