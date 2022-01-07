
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;


 int host_to_priv (struct tmio_mmc_host*) ;
 int renesas_sdhi_reset_hs400_mode (struct tmio_mmc_host*,int ) ;

__attribute__((used)) static void renesas_sdhi_prepare_hs400_tuning(struct tmio_mmc_host *host)
{
 renesas_sdhi_reset_hs400_mode(host, host_to_priv(host));
}
