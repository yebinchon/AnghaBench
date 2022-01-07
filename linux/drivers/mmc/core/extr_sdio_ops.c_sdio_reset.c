
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mmc_host {int dummy; } ;


 int SDIO_CCCR_ABORT ;
 int mmc_io_rw_direct_host (struct mmc_host*,int,int ,int ,int,int*) ;

int sdio_reset(struct mmc_host *host)
{
 int ret;
 u8 abort;



 ret = mmc_io_rw_direct_host(host, 0, 0, SDIO_CCCR_ABORT, 0, &abort);
 if (ret)
  abort = 0x08;
 else
  abort |= 0x08;

 return mmc_io_rw_direct_host(host, 1, 0, SDIO_CCCR_ABORT, abort, ((void*)0));
}
