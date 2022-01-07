
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hifmc_host {int num_chip; TYPE_1__** nor; } ;
struct TYPE_2__ {int mtd; } ;


 int mtd_device_unregister (int *) ;

__attribute__((used)) static void hisi_spi_nor_unregister_all(struct hifmc_host *host)
{
 int i;

 for (i = 0; i < host->num_chip; i++)
  mtd_device_unregister(&host->nor[i]->mtd);
}
