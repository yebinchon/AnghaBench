
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int class_dev; } ;


 int mmc_pwrseq_free (struct mmc_host*) ;
 int put_device (int *) ;

void mmc_free_host(struct mmc_host *host)
{
 mmc_pwrseq_free(host);
 put_device(&host->class_dev);
}
