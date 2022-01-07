
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int tap_num; unsigned long tap_set; int taps; } ;
struct renesas_sdhi {int dummy; } ;


 int EIO ;
 unsigned long SH_MOBILE_SDHI_MAX_TAP ;
 int SH_MOBILE_SDHI_SCC_RVSCNTL ;
 int SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN ;
 int SH_MOBILE_SDHI_SCC_RVSREQ ;
 int SH_MOBILE_SDHI_SCC_TAPSET ;
 int clear_bit (unsigned long,int ) ;
 struct renesas_sdhi* host_to_priv (struct tmio_mmc_host*) ;
 int sd_scc_read32 (struct tmio_mmc_host*,struct renesas_sdhi*,int ) ;
 int sd_scc_write32 (struct tmio_mmc_host*,struct renesas_sdhi*,int ,int) ;
 scalar_t__ test_bit (unsigned long,int ) ;

__attribute__((used)) static int renesas_sdhi_select_tuning(struct tmio_mmc_host *host)
{
 struct renesas_sdhi *priv = host_to_priv(host);
 unsigned long tap_cnt;
 unsigned long tap_start;
 unsigned long tap_end;
 unsigned long ntap;
 unsigned long i;


 sd_scc_write32(host, priv, SH_MOBILE_SDHI_SCC_RVSREQ, 0);






 for (i = 0; i < host->tap_num * 2; i++) {
  int offset = host->tap_num * (i < host->tap_num ? 1 : -1);

  if (!test_bit(i, host->taps))
   clear_bit(i + offset, host->taps);
 }






 tap_cnt = 0;
 ntap = 0;
 tap_start = 0;
 tap_end = 0;
 for (i = 0; i < host->tap_num * 2; i++) {
  if (test_bit(i, host->taps)) {
   ntap++;
  } else {
   if (ntap > tap_cnt) {
    tap_start = i - ntap;
    tap_end = i - 1;
    tap_cnt = ntap;
   }
   ntap = 0;
  }
 }

 if (ntap > tap_cnt) {
  tap_start = i - ntap;
  tap_end = i - 1;
  tap_cnt = ntap;
 }

 if (tap_cnt >= SH_MOBILE_SDHI_MAX_TAP)
  host->tap_set = (tap_start + tap_end) / 2 % host->tap_num;
 else
  return -EIO;


 sd_scc_write32(host, priv, SH_MOBILE_SDHI_SCC_TAPSET, host->tap_set);


 sd_scc_write32(host, priv, SH_MOBILE_SDHI_SCC_RVSCNTL,
         SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN |
         sd_scc_read32(host, priv, SH_MOBILE_SDHI_SCC_RVSCNTL));

 return 0;
}
