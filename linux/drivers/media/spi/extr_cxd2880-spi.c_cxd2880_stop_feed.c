
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_demux_feed {int pid; struct dvb_demux* demux; } ;
struct dvb_demux {struct cxd2880_dvb_spi* priv; } ;
struct cxd2880_pid_filter_config {TYPE_1__* pid_config; } ;
struct cxd2880_dvb_spi {scalar_t__ all_pid_feed_count; int feed_count; int * ts_buf; int cxd2880_ts_read_thread; struct cxd2880_pid_filter_config filter_config; } ;
struct TYPE_2__ {scalar_t__ pid; scalar_t__ is_enable; } ;


 int CXD2880_MAX_FILTER_SIZE ;
 int EINVAL ;
 int cxd2880_update_pid_filter (struct cxd2880_dvb_spi*,struct cxd2880_pid_filter_config*,int) ;
 int kfree (int *) ;
 int kthread_stop (int ) ;
 int pr_debug (char*,scalar_t__,...) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int cxd2880_stop_feed(struct dvb_demux_feed *feed)
{
 int i = 0;
 int ret;
 struct dvb_demux *demux = ((void*)0);
 struct cxd2880_dvb_spi *dvb_spi = ((void*)0);

 if (!feed) {
  pr_err("invalid arg\n");
  return -EINVAL;
 }

 demux = feed->demux;
 if (!demux) {
  pr_err("feed->demux is NULL\n");
  return -EINVAL;
 }
 dvb_spi = demux->priv;

 if (!dvb_spi->feed_count) {
  pr_err("no feed is started\n");
  return -EINVAL;
 }

 if (feed->pid == 0x2000) {





  if (dvb_spi->all_pid_feed_count <= 0) {
   pr_err("PID %d not found.\n", feed->pid);
   return -EINVAL;
  }
  dvb_spi->all_pid_feed_count--;
 } else {
  struct cxd2880_pid_filter_config cfgtmp;

  cfgtmp = dvb_spi->filter_config;

  for (i = 0; i < CXD2880_MAX_FILTER_SIZE; i++) {
   if (feed->pid == cfgtmp.pid_config[i].pid &&
       cfgtmp.pid_config[i].is_enable != 0) {
    cfgtmp.pid_config[i].is_enable = 0;
    cfgtmp.pid_config[i].pid = 0;
    pr_debug("removed PID %d from #%d\n",
      feed->pid, i);
    break;
   }
  }
  dvb_spi->filter_config = cfgtmp;

  if (i == CXD2880_MAX_FILTER_SIZE) {
   pr_err("PID %d not found\n", feed->pid);
   return -EINVAL;
  }
 }

 ret = cxd2880_update_pid_filter(dvb_spi,
     &dvb_spi->filter_config,
     dvb_spi->all_pid_feed_count > 0);
 dvb_spi->feed_count--;

 if (dvb_spi->feed_count == 0) {
  int ret_stop = 0;

  ret_stop = kthread_stop(dvb_spi->cxd2880_ts_read_thread);
  if (ret_stop) {
   pr_err("'kthread_stop failed. (%d)\n", ret_stop);
   ret = ret_stop;
  }
  kfree(dvb_spi->ts_buf);
  dvb_spi->ts_buf = ((void*)0);
 }

 pr_debug("stop feed ok.(count %d)\n", dvb_spi->feed_count);

 return ret;
}
