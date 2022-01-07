
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int dummy; } ;


 int macronix_set_4byte (struct spi_nor*,int) ;
 int write_disable (struct spi_nor*) ;
 int write_enable (struct spi_nor*) ;

__attribute__((used)) static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
{
 int ret;

 write_enable(nor);
 ret = macronix_set_4byte(nor, enable);
 write_disable(nor);

 return ret;
}
