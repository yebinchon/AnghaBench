
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_nor {struct aspeed_smc_chip* priv; } ;
struct aspeed_smc_chip {TYPE_1__* controller; } ;
typedef enum spi_nor_ops { ____Placeholder_spi_nor_ops } spi_nor_ops ;
struct TYPE_2__ {int mutex; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static int aspeed_smc_prep(struct spi_nor *nor, enum spi_nor_ops ops)
{
 struct aspeed_smc_chip *chip = nor->priv;

 mutex_lock(&chip->controller->mutex);
 return 0;
}
