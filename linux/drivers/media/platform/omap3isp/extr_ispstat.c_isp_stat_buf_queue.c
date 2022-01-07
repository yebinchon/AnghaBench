
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct ispstat {TYPE_3__* active_buf; int frame_number; int config_counter; TYPE_2__ subdev; TYPE_1__* isp; int buf_size; } ;
struct TYPE_6__ {scalar_t__ empty; int frame_number; int config_counter; int buf_size; int ts; } ;
struct TYPE_4__ {int dev; } ;


 int STAT_BUF_DONE ;
 int STAT_NO_BUF ;
 int dev_dbg (int ,char*,int ) ;
 scalar_t__ isp_stat_buf_check_magic (struct ispstat*,TYPE_3__*) ;
 int ktime_get_ts64 (int *) ;

__attribute__((used)) static int isp_stat_buf_queue(struct ispstat *stat)
{
 if (!stat->active_buf)
  return STAT_NO_BUF;

 ktime_get_ts64(&stat->active_buf->ts);

 stat->active_buf->buf_size = stat->buf_size;
 if (isp_stat_buf_check_magic(stat, stat->active_buf)) {
  dev_dbg(stat->isp->dev, "%s: data wasn't properly written.\n",
   stat->subdev.name);
  return STAT_NO_BUF;
 }
 stat->active_buf->config_counter = stat->config_counter;
 stat->active_buf->frame_number = stat->frame_number;
 stat->active_buf->empty = 0;
 stat->active_buf = ((void*)0);

 return STAT_BUF_DONE;
}
