
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int regmap_spi_gather_write (void*,int *,int,int const*,size_t) ;

__attribute__((used)) static int tcan4x5x_regmap_write(void *context, const void *data, size_t count)
{
 u16 *reg = (u16 *)(data);
 const u32 *val = data + 4;

 return regmap_spi_gather_write(context, reg, 4, val, count - 4);
}
