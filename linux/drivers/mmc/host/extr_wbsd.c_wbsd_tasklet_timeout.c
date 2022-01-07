
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int lock; int finish_tasklet; int mrq; } ;
struct mmc_data {int error; } ;


 int DBGF (char*) ;
 int ETIMEDOUT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;
 struct mmc_data* wbsd_get_data (struct wbsd_host*) ;

__attribute__((used)) static void wbsd_tasklet_timeout(unsigned long param)
{
 struct wbsd_host *host = (struct wbsd_host *)param;
 struct mmc_data *data;

 spin_lock(&host->lock);

 if (!host->mrq)
  goto end;

 data = wbsd_get_data(host);
 if (!data)
  goto end;

 DBGF("Timeout\n");

 data->error = -ETIMEDOUT;

 tasklet_schedule(&host->finish_tasklet);

end:
 spin_unlock(&host->lock);
}
