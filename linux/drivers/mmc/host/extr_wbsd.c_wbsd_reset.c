
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wbsd_host {int mmc; } ;


 int WBSD_IDX_SETUP ;
 int WBSD_SOFT_RESET ;
 int mmc_hostname (int ) ;
 int pr_err (char*,int ) ;
 int wbsd_read_index (struct wbsd_host*,int ) ;
 int wbsd_write_index (struct wbsd_host*,int ,int ) ;

__attribute__((used)) static void wbsd_reset(struct wbsd_host *host)
{
 u8 setup;

 pr_err("%s: Resetting chip\n", mmc_hostname(host->mmc));




 setup = wbsd_read_index(host, WBSD_IDX_SETUP);
 setup |= WBSD_SOFT_RESET;
 wbsd_write_index(host, WBSD_IDX_SETUP, setup);
}
