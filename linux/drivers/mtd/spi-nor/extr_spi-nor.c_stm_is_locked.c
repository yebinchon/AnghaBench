
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct spi_nor {int dummy; } ;
typedef int loff_t ;


 int read_sr (struct spi_nor*) ;
 int stm_is_locked_sr (struct spi_nor*,int ,int ,int) ;

__attribute__((used)) static int stm_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
{
 int status;

 status = read_sr(nor);
 if (status < 0)
  return status;

 return stm_is_locked_sr(nor, ofs, len, status);
}
