
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmio_mmc_host {int bus_shift; } ;
struct renesas_sdhi {scalar_t__ scc_ctl; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void sd_scc_write32(struct tmio_mmc_host *host,
      struct renesas_sdhi *priv,
      int addr, u32 val)
{
 writel(val, priv->scc_ctl + (addr << host->bus_shift));
}
