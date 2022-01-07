
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmio_mmc_host {int bus_shift; scalar_t__ ctl; } ;


 int ioread16 (scalar_t__) ;

__attribute__((used)) static inline u32 sd_ctrl_read16_and_16_as_32(struct tmio_mmc_host *host,
           int addr)
{
 return ioread16(host->ctl + (addr << host->bus_shift)) |
        ioread16(host->ctl + ((addr + 2) << host->bus_shift)) << 16;
}
