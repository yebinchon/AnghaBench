
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpmc_timings {int dummy; } ;
struct gpmc_settings {scalar_t__ sync_write; scalar_t__ sync_read; scalar_t__ mux_add_data; } ;
struct gpmc_device_timings {int dummy; } ;


 int gpmc_calc_async_read_timings (struct gpmc_timings*,struct gpmc_device_timings*,int) ;
 int gpmc_calc_async_write_timings (struct gpmc_timings*,struct gpmc_device_timings*,int) ;
 int gpmc_calc_common_timings (struct gpmc_timings*,struct gpmc_device_timings*,int) ;
 int gpmc_calc_sync_read_timings (struct gpmc_timings*,struct gpmc_device_timings*,int) ;
 int gpmc_calc_sync_write_timings (struct gpmc_timings*,struct gpmc_device_timings*,int) ;
 int gpmc_convert_ps_to_ns (struct gpmc_timings*) ;
 int memset (struct gpmc_timings*,int ,int) ;

int gpmc_calc_timings(struct gpmc_timings *gpmc_t,
        struct gpmc_settings *gpmc_s,
        struct gpmc_device_timings *dev_t)
{
 bool mux = 0, sync = 0;

 if (gpmc_s) {
  mux = gpmc_s->mux_add_data ? 1 : 0;
  sync = (gpmc_s->sync_read || gpmc_s->sync_write);
 }

 memset(gpmc_t, 0, sizeof(*gpmc_t));

 gpmc_calc_common_timings(gpmc_t, dev_t, sync);

 if (gpmc_s && gpmc_s->sync_read)
  gpmc_calc_sync_read_timings(gpmc_t, dev_t, mux);
 else
  gpmc_calc_async_read_timings(gpmc_t, dev_t, mux);

 if (gpmc_s && gpmc_s->sync_write)
  gpmc_calc_sync_write_timings(gpmc_t, dev_t, mux);
 else
  gpmc_calc_async_write_timings(gpmc_t, dev_t, mux);


 gpmc_convert_ps_to_ns(gpmc_t);

 return 0;
}
