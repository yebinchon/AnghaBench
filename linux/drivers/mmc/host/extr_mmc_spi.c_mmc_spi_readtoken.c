
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_spi_host {int dummy; } ;


 int mmc_spi_skip (struct mmc_spi_host*,unsigned long,int,int) ;

__attribute__((used)) static int mmc_spi_readtoken(struct mmc_spi_host *host, unsigned long timeout)
{
 return mmc_spi_skip(host, timeout, 1, 0xff);
}
