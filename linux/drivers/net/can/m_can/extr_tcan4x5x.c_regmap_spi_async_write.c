
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_async {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int regmap_spi_async_write(void *context,
      const void *reg, size_t reg_len,
      const void *val, size_t val_len,
      struct regmap_async *a)
{
 return -ENOTSUPP;
}
