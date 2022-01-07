
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* quad_enable ) (struct spi_nor*) ;} ;
struct spi_nor {TYPE_1__ params; int write_proto; int read_proto; } ;


 int spi_nor_get_protocol_width (int ) ;
 int stub1 (struct spi_nor*) ;

__attribute__((used)) static int spi_nor_quad_enable(struct spi_nor *nor)
{
 if (!nor->params.quad_enable)
  return 0;

 if (!(spi_nor_get_protocol_width(nor->read_proto) == 4 ||
       spi_nor_get_protocol_width(nor->write_proto) == 4))
  return 0;

 return nor->params.quad_enable(nor);
}
