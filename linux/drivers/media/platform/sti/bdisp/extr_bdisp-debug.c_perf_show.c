
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct bdisp_dev* private; } ;
struct bdisp_request {int nb_req; } ;
struct TYPE_2__ {int min_duration; int max_duration; int last_duration; int tot_duration; struct bdisp_request copy_request; } ;
struct bdisp_dev {TYPE_1__ dbg; } ;
typedef int s64 ;
typedef int s32 ;


 int SECOND ;
 int div64_s64 (int ,int ) ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int perf_show(struct seq_file *s, void *data)
{
 struct bdisp_dev *bdisp = s->private;
 struct bdisp_request *request = &bdisp->dbg.copy_request;
 s64 avg_time_us;
 int avg_fps, min_fps, max_fps, last_fps;

 if (!request->nb_req) {
  seq_puts(s, "No request\n");
  return 0;
 }

 avg_time_us = div64_s64(bdisp->dbg.tot_duration, request->nb_req);
 if (avg_time_us > SECOND)
  avg_fps = 0;
 else
  avg_fps = SECOND / (s32)avg_time_us;

 if (bdisp->dbg.min_duration > SECOND)
  min_fps = 0;
 else
  min_fps = SECOND / (s32)bdisp->dbg.min_duration;

 if (bdisp->dbg.max_duration > SECOND)
  max_fps = 0;
 else
  max_fps = SECOND / (s32)bdisp->dbg.max_duration;

 if (bdisp->dbg.last_duration > SECOND)
  last_fps = 0;
 else
  last_fps = SECOND / (s32)bdisp->dbg.last_duration;

 seq_printf(s, "HW processing (%d requests):\n", request->nb_req);
 seq_printf(s, " Average: %5lld us  (%3d fps)\n",
     avg_time_us, avg_fps);
 seq_printf(s, " Min-Max: %5lld us  (%3d fps) - %5lld us  (%3d fps)\n",
     bdisp->dbg.min_duration, min_fps,
     bdisp->dbg.max_duration, max_fps);
 seq_printf(s, " Last:    %5lld us  (%3d fps)\n",
     bdisp->dbg.last_duration, last_fps);

 return 0;
}
