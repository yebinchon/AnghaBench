
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxd2880_ts_buf_info {int pkt_num; } ;
struct cxd2880_dvb_spi {int ts_buf; int demux; int spi; } ;
typedef int ktime_t ;


 int EINVAL ;
 int MAX_TRANS_PKT ;
 int cxd2880_spi_clear_ts_buffer (int ) ;
 int cxd2880_spi_read_ts (int ,int ,int) ;
 int cxd2880_spi_read_ts_buffer_info (int ,struct cxd2880_ts_buf_info*) ;
 int dvb_dmx_swfilter (int *,int ,int) ;
 int kthread_should_stop () ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ms (int ) ;
 int pr_err (char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cxd2880_ts_read(void *arg)
{
 struct cxd2880_dvb_spi *dvb_spi = ((void*)0);
 struct cxd2880_ts_buf_info info;
 ktime_t start;
 u32 i;
 int ret;

 dvb_spi = arg;
 if (!dvb_spi) {
  pr_err("invalid arg\n");
  return -EINVAL;
 }

 ret = cxd2880_spi_clear_ts_buffer(dvb_spi->spi);
 if (ret) {
  pr_err("set_clear_ts_buffer failed\n");
  return ret;
 }

 start = ktime_get();
 while (!kthread_should_stop()) {
  ret = cxd2880_spi_read_ts_buffer_info(dvb_spi->spi,
            &info);
  if (ret) {
   pr_err("spi_read_ts_buffer_info error\n");
   return ret;
  }

  if (info.pkt_num > MAX_TRANS_PKT) {
   for (i = 0; i < info.pkt_num / MAX_TRANS_PKT; i++) {
    cxd2880_spi_read_ts(dvb_spi->spi,
          dvb_spi->ts_buf,
          MAX_TRANS_PKT);
    dvb_dmx_swfilter(&dvb_spi->demux,
       dvb_spi->ts_buf,
       MAX_TRANS_PKT * 188);
   }
   start = ktime_get();
  } else if ((info.pkt_num > 0) &&
      (ktime_to_ms(ktime_sub(ktime_get(), start)) >= 500)) {
   cxd2880_spi_read_ts(dvb_spi->spi,
         dvb_spi->ts_buf,
         info.pkt_num);
   dvb_dmx_swfilter(&dvb_spi->demux,
      dvb_spi->ts_buf,
      info.pkt_num * 188);
   start = ktime_get();
  } else {
   usleep_range(10000, 11000);
  }
 }

 return 0;
}
