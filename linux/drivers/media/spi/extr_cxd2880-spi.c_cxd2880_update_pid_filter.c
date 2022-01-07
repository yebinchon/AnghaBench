
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmpcfg ;
struct cxd2880_pid_filter_config {int is_negative; TYPE_1__* pid_config; } ;
struct cxd2880_dvb_spi {int spi_mutex; int spi; } ;
struct TYPE_2__ {int is_enable; int pid; } ;


 int EINVAL ;
 int cxd2880_set_pid_filter (int ,struct cxd2880_pid_filter_config*) ;
 int memset (struct cxd2880_pid_filter_config*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int cxd2880_update_pid_filter(struct cxd2880_dvb_spi *dvb_spi,
         struct cxd2880_pid_filter_config *cfg,
         bool is_all_pid_filter)
{
 int ret;

 if (!dvb_spi || !cfg) {
  pr_err("invalid arg.\n");
  return -EINVAL;
 }

 mutex_lock(&dvb_spi->spi_mutex);
 if (is_all_pid_filter) {
  struct cxd2880_pid_filter_config tmpcfg;

  memset(&tmpcfg, 0, sizeof(tmpcfg));
  tmpcfg.is_negative = 1;
  tmpcfg.pid_config[0].is_enable = 1;
  tmpcfg.pid_config[0].pid = 0x1fff;

  ret = cxd2880_set_pid_filter(dvb_spi->spi, &tmpcfg);
 } else {
  ret = cxd2880_set_pid_filter(dvb_spi->spi, cfg);
 }
 mutex_unlock(&dvb_spi->spi_mutex);

 if (ret)
  pr_err("set_pid_filter failed\n");

 return ret;
}
