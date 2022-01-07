
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tmio_mmc_host {int bus_shift; scalar_t__ ctl; scalar_t__ (* write16_hook ) (struct tmio_mmc_host*,int) ;} ;


 int iowrite16 (int ,scalar_t__) ;
 scalar_t__ stub1 (struct tmio_mmc_host*,int) ;

__attribute__((used)) static inline void sd_ctrl_write16(struct tmio_mmc_host *host, int addr,
       u16 val)
{



 if (host->write16_hook && host->write16_hook(host, addr))
  return;
 iowrite16(val, host->ctl + (addr << host->bus_shift));
}
