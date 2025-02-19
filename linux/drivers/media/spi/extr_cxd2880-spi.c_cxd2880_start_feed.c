
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_demux_feed {int pid; struct dvb_demux* demux; } ;
struct dvb_demux {struct cxd2880_dvb_spi* priv; } ;
struct cxd2880_pid_filter_config {TYPE_1__* pid_config; } ;
struct cxd2880_dvb_spi {int feed_count; scalar_t__ all_pid_feed_count; int cxd2880_ts_read_thread; struct cxd2880_pid_filter_config filter_config; int * ts_buf; } ;
struct TYPE_2__ {int is_enable; int pid; } ;


 int CXD2880_MAX_FILTER_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_TRANS_PKT ;
 int PTR_ERR (int ) ;
 int cxd2880_ts_read ;
 int cxd2880_update_pid_filter (struct cxd2880_dvb_spi*,struct cxd2880_pid_filter_config*,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int) ;
 int kthread_run (int ,struct cxd2880_dvb_spi*,char*) ;
 int memset (struct cxd2880_pid_filter_config*,int ,int) ;
 int pr_debug (char*,scalar_t__,...) ;
 int pr_err (char*) ;

__attribute__((used)) static int cxd2880_start_feed(struct dvb_demux_feed *feed)
{
 int ret = 0;
 int i = 0;
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

 if (dvb_spi->feed_count == CXD2880_MAX_FILTER_SIZE) {
  pr_err("Exceeded maximum PID count (32).");
  pr_err("Selected PID cannot be enabled.\n");
  return -EINVAL;
 }

 if (feed->pid == 0x2000) {
  if (dvb_spi->all_pid_feed_count == 0) {
   ret = cxd2880_update_pid_filter(dvb_spi,
       &dvb_spi->filter_config,
       1);
   if (ret) {
    pr_err("update pid filter failed\n");
    return ret;
   }
  }
  dvb_spi->all_pid_feed_count++;

  pr_debug("all PID feed (count = %d)\n",
    dvb_spi->all_pid_feed_count);
 } else {
  struct cxd2880_pid_filter_config cfgtmp;

  cfgtmp = dvb_spi->filter_config;

  for (i = 0; i < CXD2880_MAX_FILTER_SIZE; i++) {
   if (cfgtmp.pid_config[i].is_enable == 0) {
    cfgtmp.pid_config[i].is_enable = 1;
    cfgtmp.pid_config[i].pid = feed->pid;
    pr_debug("store PID %d to #%d\n",
      feed->pid, i);
    break;
   }
  }
  if (i == CXD2880_MAX_FILTER_SIZE) {
   pr_err("PID filter is full.\n");
   return -EINVAL;
  }
  if (!dvb_spi->all_pid_feed_count)
   ret = cxd2880_update_pid_filter(dvb_spi,
       &cfgtmp,
       0);
  if (ret)
   return ret;

  dvb_spi->filter_config = cfgtmp;
 }

 if (dvb_spi->feed_count == 0) {
  dvb_spi->ts_buf =
   kmalloc(MAX_TRANS_PKT * 188,
    GFP_KERNEL | GFP_DMA);
  if (!dvb_spi->ts_buf) {
   pr_err("ts buffer allocate failed\n");
   memset(&dvb_spi->filter_config, 0,
          sizeof(dvb_spi->filter_config));
   dvb_spi->all_pid_feed_count = 0;
   return -ENOMEM;
  }
  dvb_spi->cxd2880_ts_read_thread = kthread_run(cxd2880_ts_read,
             dvb_spi,
             "cxd2880_ts_read");
  if (IS_ERR(dvb_spi->cxd2880_ts_read_thread)) {
   pr_err("kthread_run failed/\n");
   kfree(dvb_spi->ts_buf);
   dvb_spi->ts_buf = ((void*)0);
   memset(&dvb_spi->filter_config, 0,
          sizeof(dvb_spi->filter_config));
   dvb_spi->all_pid_feed_count = 0;
   return PTR_ERR(dvb_spi->cxd2880_ts_read_thread);
  }
 }

 dvb_spi->feed_count++;

 pr_debug("start feed (count %d)\n", dvb_spi->feed_count);
 return 0;
}
