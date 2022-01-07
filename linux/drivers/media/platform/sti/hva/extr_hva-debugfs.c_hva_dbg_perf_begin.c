
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct hva_ctx_dbg {int is_valid_period; int window_duration; int cnt_window; scalar_t__ window_stream_size; void* max_bitrate; void* min_bitrate; scalar_t__ last_bitrate; int cnt_period; int total_period; void* max_period; void* min_period; int begin; } ;
struct hva_ctx {struct hva_ctx_dbg dbg; } ;
typedef int ktime_t ;


 int do_div (int,int) ;
 int ktime_get () ;
 scalar_t__ ktime_us_delta (int ,int ) ;
 void* max (scalar_t__,void*) ;
 void* min (scalar_t__,void*) ;

void hva_dbg_perf_begin(struct hva_ctx *ctx)
{
 u64 div;
 u32 period;
 u32 bitrate;
 struct hva_ctx_dbg *dbg = &ctx->dbg;
 ktime_t prev = dbg->begin;

 dbg->begin = ktime_get();

 if (dbg->is_valid_period) {

  div = (u64)ktime_us_delta(dbg->begin, prev);
  do_div(div, 100);
  period = (u32)div;
  dbg->min_period = min(period, dbg->min_period);
  dbg->max_period = max(period, dbg->max_period);
  dbg->total_period += period;
  dbg->cnt_period++;





  dbg->window_duration += period;
  dbg->cnt_window++;
  if (dbg->cnt_window >= 32) {





   if (dbg->window_duration > 0) {
    div = (u64)dbg->window_stream_size * 80;
    do_div(div, dbg->window_duration);
    bitrate = (u32)div;
    dbg->last_bitrate = bitrate;
    dbg->min_bitrate = min(bitrate,
             dbg->min_bitrate);
    dbg->max_bitrate = max(bitrate,
             dbg->max_bitrate);
   }
   dbg->window_stream_size = 0;
   dbg->window_duration = 0;
   dbg->cnt_window = 0;
  }
 }






 dbg->is_valid_period = 0;
}
