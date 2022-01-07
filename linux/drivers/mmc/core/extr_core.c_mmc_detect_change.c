
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;


 int _mmc_detect_change (struct mmc_host*,unsigned long,int) ;

void mmc_detect_change(struct mmc_host *host, unsigned long delay)
{
 _mmc_detect_change(host, delay, 1);
}
