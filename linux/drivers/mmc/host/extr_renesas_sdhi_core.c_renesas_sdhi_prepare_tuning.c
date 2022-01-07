
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;
struct renesas_sdhi {int dummy; } ;


 int SH_MOBILE_SDHI_SCC_TAPSET ;
 struct renesas_sdhi* host_to_priv (struct tmio_mmc_host*) ;
 int sd_scc_write32 (struct tmio_mmc_host*,struct renesas_sdhi*,int ,unsigned long) ;

__attribute__((used)) static void renesas_sdhi_prepare_tuning(struct tmio_mmc_host *host,
     unsigned long tap)
{
 struct renesas_sdhi *priv = host_to_priv(host);


 sd_scc_write32(host, priv, SH_MOBILE_SDHI_SCC_TAPSET, tap);
}
