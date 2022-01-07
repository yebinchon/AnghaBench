
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpmc_timings {int dummy; } ;
struct gpmc_settings {int sync_write; int sync_read; int burst_len; } ;
struct gpmc_onenand_info {int burst_len; int sync_write; int sync_read; } ;
struct device {int of_node; } ;


 int gpmc_cs_program_settings (int,struct gpmc_settings*) ;
 int gpmc_cs_set_timings (int,struct gpmc_timings*,struct gpmc_settings*) ;
 int gpmc_omap_onenand_calc_sync_timings (struct gpmc_timings*,struct gpmc_settings*,int,int) ;
 int gpmc_read_settings_dt (int ,struct gpmc_settings*) ;

int gpmc_omap_onenand_set_timings(struct device *dev, int cs, int freq,
      int latency,
      struct gpmc_onenand_info *info)
{
 int ret;
 struct gpmc_timings gpmc_t;
 struct gpmc_settings gpmc_s;

 gpmc_read_settings_dt(dev->of_node, &gpmc_s);

 info->sync_read = gpmc_s.sync_read;
 info->sync_write = gpmc_s.sync_write;
 info->burst_len = gpmc_s.burst_len;

 if (!gpmc_s.sync_read && !gpmc_s.sync_write)
  return 0;

 gpmc_omap_onenand_calc_sync_timings(&gpmc_t, &gpmc_s, freq, latency);

 ret = gpmc_cs_program_settings(cs, &gpmc_s);
 if (ret < 0)
  return ret;

 return gpmc_cs_set_timings(cs, &gpmc_t, &gpmc_s);
}
