
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ timestamp; } ;
struct TYPE_3__ {int sequence; TYPE_2__ vb2_buf; } ;
struct hva_stream {TYPE_1__ vbuf; } ;
struct hva_ctx_dbg {int is_valid_period; int window_stream_size; int total_stream_size; int cnt_duration; int total_duration; int max_duration; int min_duration; int begin; } ;
struct hva_ctx {int name; struct hva_ctx_dbg dbg; } ;
struct device {int dummy; } ;
typedef int ktime_t ;


 struct device* ctx_to_dev (struct hva_ctx*) ;
 int dev_dbg (struct device*,char*,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int do_div (scalar_t__,int) ;
 int ktime_get () ;
 scalar_t__ ktime_us_delta (int ,int ) ;
 int max (scalar_t__,int ) ;
 int min (scalar_t__,int ) ;
 scalar_t__ vb2_get_plane_payload (TYPE_2__*,int ) ;

void hva_dbg_perf_end(struct hva_ctx *ctx, struct hva_stream *stream)
{
 struct device *dev = ctx_to_dev(ctx);
 u64 div;
 u32 duration;
 u32 bytesused;
 u32 timestamp;
 struct hva_ctx_dbg *dbg = &ctx->dbg;
 ktime_t end = ktime_get();


 bytesused = vb2_get_plane_payload(&stream->vbuf.vb2_buf, 0);
 div = stream->vbuf.vb2_buf.timestamp;
 do_div(div, 1000);
 timestamp = (u32)div;


 div = (u64)ktime_us_delta(end, dbg->begin);

 dev_dbg(dev,
  "%s perf stream[%d] dts=%d encoded using %d bytes in %d us",
  ctx->name,
  stream->vbuf.sequence,
  timestamp,
  bytesused, (u32)div);

 do_div(div, 100);
 duration = (u32)div;

 dbg->min_duration = min(duration, dbg->min_duration);
 dbg->max_duration = max(duration, dbg->max_duration);
 dbg->total_duration += duration;
 dbg->cnt_duration++;





 dbg->total_stream_size += bytesused;
 dbg->window_stream_size += bytesused;

 dbg->is_valid_period = 1;
}
