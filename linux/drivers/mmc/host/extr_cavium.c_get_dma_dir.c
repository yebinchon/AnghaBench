
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int flags; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int MMC_DATA_WRITE ;

__attribute__((used)) static int get_dma_dir(struct mmc_data *data)
{
 return (data->flags & MMC_DATA_WRITE) ? DMA_TO_DEVICE : DMA_FROM_DEVICE;
}
