
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int tv_usec; int tv_sec; } ;
struct omap3isp_stat_data {int buf_size; int frame_number; int config_counter; TYPE_3__ ts; } ;
struct TYPE_8__ {int tv_nsec; int tv_sec; } ;
struct ispstat_buffer {int empty; int buf_size; int frame_number; int config_counter; TYPE_4__ ts; } ;
struct TYPE_6__ {int name; } ;
struct ispstat {scalar_t__ state; int ioctl_lock; TYPE_2__ subdev; TYPE_1__* isp; } ;
struct TYPE_5__ {int dev; } ;


 int EINVAL ;
 scalar_t__ ISPSTAT_ENABLED ;
 scalar_t__ IS_ERR (struct ispstat_buffer*) ;
 int NSEC_PER_USEC ;
 int PTR_ERR (struct ispstat_buffer*) ;
 int dev_dbg (int ,char*,int ) ;
 struct ispstat_buffer* isp_stat_buf_get (struct ispstat*,struct omap3isp_stat_data*) ;
 int isp_stat_buf_release (struct ispstat*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int omap3isp_stat_request_statistics(struct ispstat *stat,
         struct omap3isp_stat_data *data)
{
 struct ispstat_buffer *buf;

 if (stat->state != ISPSTAT_ENABLED) {
  dev_dbg(stat->isp->dev, "%s: engine not enabled.\n",
   stat->subdev.name);
  return -EINVAL;
 }

 mutex_lock(&stat->ioctl_lock);
 buf = isp_stat_buf_get(stat, data);
 if (IS_ERR(buf)) {
  mutex_unlock(&stat->ioctl_lock);
  return PTR_ERR(buf);
 }

 data->ts.tv_sec = buf->ts.tv_sec;
 data->ts.tv_usec = buf->ts.tv_nsec / NSEC_PER_USEC;
 data->config_counter = buf->config_counter;
 data->frame_number = buf->frame_number;
 data->buf_size = buf->buf_size;

 buf->empty = 1;
 isp_stat_buf_release(stat);
 mutex_unlock(&stat->ioctl_lock);

 return 0;
}
