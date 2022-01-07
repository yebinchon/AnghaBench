
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmio_mmc_host {int bus_shift; scalar_t__ ctl; } ;


 int ioread32_rep (scalar_t__,int *,int) ;

__attribute__((used)) static inline void sd_ctrl_read32_rep(struct tmio_mmc_host *host, int addr,
          u32 *buf, int count)
{
 ioread32_rep(host->ctl + (addr << host->bus_shift), buf, count);
}
