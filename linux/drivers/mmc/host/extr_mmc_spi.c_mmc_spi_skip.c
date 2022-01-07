
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct mmc_spi_host {TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__* status; } ;


 int ETIMEDOUT ;
 unsigned long jiffies ;
 int mmc_spi_readbytes (struct mmc_spi_host*,unsigned int) ;
 int schedule () ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;

__attribute__((used)) static int mmc_spi_skip(struct mmc_spi_host *host, unsigned long timeout,
   unsigned n, u8 byte)
{
 u8 *cp = host->data->status;
 unsigned long start = jiffies;

 while (1) {
  int status;
  unsigned i;

  status = mmc_spi_readbytes(host, n);
  if (status < 0)
   return status;

  for (i = 0; i < n; i++) {
   if (cp[i] != byte)
    return cp[i];
  }

  if (time_is_before_jiffies(start + timeout))
   break;





  if (time_is_before_jiffies(start + 1))
   schedule();
 }
 return -ETIMEDOUT;
}
