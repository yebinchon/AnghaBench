
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int OP_READ_STATUS ;
 int spi_w8r8 (struct spi_device*,int ) ;

__attribute__((used)) static inline int dataflash_status(struct spi_device *spi)
{



 return spi_w8r8(spi, OP_READ_STATUS);
}
