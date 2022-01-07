
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* convert_addr ) (struct spi_nor*,int ) ;} ;
struct spi_nor {TYPE_1__ params; } ;
typedef int loff_t ;


 int stub1 (struct spi_nor*,int ) ;

__attribute__((used)) static u32 spi_nor_convert_addr(struct spi_nor *nor, loff_t addr)
{
 if (!nor->params.convert_addr)
  return addr;

 return nor->params.convert_addr(nor, addr);
}
