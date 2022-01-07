
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int add_dataflash_otp (struct spi_device*,char*,int,int,int,int ) ;

__attribute__((used)) static inline int add_dataflash(struct spi_device *spi, char *name,
    int nr_pages, int pagesize, int pageoffset)
{
 return add_dataflash_otp(spi, name, nr_pages, pagesize,
   pageoffset, 0);
}
