
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tmio_mmc_host {scalar_t__ ctl; } ;


 int writeq (int ,scalar_t__) ;

__attribute__((used)) static void
renesas_sdhi_internal_dmac_dm_write(struct tmio_mmc_host *host,
        int addr, u64 val)
{
 writeq(val, host->ctl + addr);
}
