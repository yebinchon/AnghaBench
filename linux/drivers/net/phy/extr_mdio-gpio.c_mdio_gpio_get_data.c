
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_gpio_info {int mdo; void* mdio; void* mdc; } ;
struct device {int dummy; } ;


 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int MDIO_GPIO_MDC ;
 int MDIO_GPIO_MDIO ;
 int MDIO_GPIO_MDO ;
 int PTR_ERR (void*) ;
 int PTR_ERR_OR_ZERO (int ) ;
 void* devm_gpiod_get_index (struct device*,int *,int ,int ) ;
 int devm_gpiod_get_index_optional (struct device*,int *,int ,int ) ;

__attribute__((used)) static int mdio_gpio_get_data(struct device *dev,
         struct mdio_gpio_info *bitbang)
{
 bitbang->mdc = devm_gpiod_get_index(dev, ((void*)0), MDIO_GPIO_MDC,
         GPIOD_OUT_LOW);
 if (IS_ERR(bitbang->mdc))
  return PTR_ERR(bitbang->mdc);

 bitbang->mdio = devm_gpiod_get_index(dev, ((void*)0), MDIO_GPIO_MDIO,
          GPIOD_IN);
 if (IS_ERR(bitbang->mdio))
  return PTR_ERR(bitbang->mdio);

 bitbang->mdo = devm_gpiod_get_index_optional(dev, ((void*)0), MDIO_GPIO_MDO,
           GPIOD_OUT_LOW);
 return PTR_ERR_OR_ZERO(bitbang->mdo);
}
