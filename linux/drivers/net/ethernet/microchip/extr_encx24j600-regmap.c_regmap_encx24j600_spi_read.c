
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct encx24j600_context {int spi; } ;
typedef int reg ;


 int RBSEL ;
 int spi_write_then_read (int ,int *,int,int *,size_t) ;

int regmap_encx24j600_spi_read(void *context, u8 reg, u8 *data, size_t count)
{
 struct encx24j600_context *ctx = context;

 if (reg == RBSEL && count > 1)
  count = 1;

 return spi_write_then_read(ctx->spi, &reg, sizeof(reg), data, count);
}
