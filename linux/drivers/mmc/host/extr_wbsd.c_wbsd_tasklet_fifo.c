
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {scalar_t__ num_sg; int lock; int finish_tasklet; int mrq; } ;
struct mmc_data {int flags; } ;


 int MMC_DATA_WRITE ;
 int WBSD_IDX_FIFOEN ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;
 int wbsd_empty_fifo (struct wbsd_host*) ;
 int wbsd_fill_fifo (struct wbsd_host*) ;
 struct mmc_data* wbsd_get_data (struct wbsd_host*) ;
 int wbsd_write_index (struct wbsd_host*,int ,int ) ;

__attribute__((used)) static void wbsd_tasklet_fifo(unsigned long param)
{
 struct wbsd_host *host = (struct wbsd_host *)param;
 struct mmc_data *data;

 spin_lock(&host->lock);

 if (!host->mrq)
  goto end;

 data = wbsd_get_data(host);
 if (!data)
  goto end;

 if (data->flags & MMC_DATA_WRITE)
  wbsd_fill_fifo(host);
 else
  wbsd_empty_fifo(host);




 if (host->num_sg == 0) {
  wbsd_write_index(host, WBSD_IDX_FIFOEN, 0);
  tasklet_schedule(&host->finish_tasklet);
 }

end:
 spin_unlock(&host->lock);
}
