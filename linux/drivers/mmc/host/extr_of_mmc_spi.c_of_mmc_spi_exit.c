
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_mmc_spi {int detect_irq; } ;
struct device {int dummy; } ;


 int free_irq (int ,void*) ;
 struct of_mmc_spi* to_of_mmc_spi (struct device*) ;

__attribute__((used)) static void of_mmc_spi_exit(struct device *dev, void *mmc)
{
 struct of_mmc_spi *oms = to_of_mmc_spi(dev);

 free_irq(oms->detect_irq, mmc);
}
