
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scr_sof_count; int max_sof; int min_sof; int nb_scr_diffs_ok; int nb_scr_count_ok; int nb_pts_constant; int nb_pts_initial; int nb_pts_early; int nb_invalid; int nb_errors; int nb_empty; int nb_packets; int nb_frames; int start_ts; int stop_ts; } ;
struct TYPE_4__ {TYPE_1__ stream; } ;
struct uvc_streaming {TYPE_2__ stats; } ;


 unsigned int ktime_ms_delta (int ,int ) ;
 scalar_t__ scnprintf (char*,size_t,char*,int ,int ,...) ;

size_t uvc_video_stats_dump(struct uvc_streaming *stream, char *buf,
       size_t size)
{
 unsigned int scr_sof_freq;
 unsigned int duration;
 size_t count = 0;




 duration = ktime_ms_delta(stream->stats.stream.stop_ts,
      stream->stats.stream.start_ts);
 if (duration != 0)
  scr_sof_freq = stream->stats.stream.scr_sof_count * 1000
        / duration;
 else
  scr_sof_freq = 0;

 count += scnprintf(buf + count, size - count,
      "frames:  %u\npackets: %u\nempty:   %u\n"
      "errors:  %u\ninvalid: %u\n",
      stream->stats.stream.nb_frames,
      stream->stats.stream.nb_packets,
      stream->stats.stream.nb_empty,
      stream->stats.stream.nb_errors,
      stream->stats.stream.nb_invalid);
 count += scnprintf(buf + count, size - count,
      "pts: %u early, %u initial, %u ok\n",
      stream->stats.stream.nb_pts_early,
      stream->stats.stream.nb_pts_initial,
      stream->stats.stream.nb_pts_constant);
 count += scnprintf(buf + count, size - count,
      "scr: %u count ok, %u diff ok\n",
      stream->stats.stream.nb_scr_count_ok,
      stream->stats.stream.nb_scr_diffs_ok);
 count += scnprintf(buf + count, size - count,
      "sof: %u <= sof <= %u, freq %u.%03u kHz\n",
      stream->stats.stream.min_sof,
      stream->stats.stream.max_sof,
      scr_sof_freq / 1000, scr_sof_freq % 1000);

 return count;
}
