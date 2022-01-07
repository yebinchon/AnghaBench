
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {unsigned int timeout_ns; } ;


 unsigned int NSEC_PER_MSEC ;
 unsigned int SD_EMMC_CMD_TIMEOUT_DATA ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int roundup_pow_of_two (unsigned int) ;

__attribute__((used)) static unsigned int meson_mmc_get_timeout_msecs(struct mmc_data *data)
{
 unsigned int timeout = data->timeout_ns / NSEC_PER_MSEC;

 if (!timeout)
  return SD_EMMC_CMD_TIMEOUT_DATA;

 timeout = roundup_pow_of_two(timeout);

 return min(timeout, 32768U);
}
