
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct encx24j600_context {int spi; } ;


 int encx24j600_cmdn (struct encx24j600_context*,int,int const*,size_t) ;
 int spi_write (int ,int*,int) ;

int regmap_encx24j600_spi_write(void *context, u8 reg, const u8 *data,
    size_t count)
{
 struct encx24j600_context *ctx = context;

 if (reg < 0xc0)
  return encx24j600_cmdn(ctx, reg, data, count);


 return spi_write(ctx->spi, &reg, 1);
}
