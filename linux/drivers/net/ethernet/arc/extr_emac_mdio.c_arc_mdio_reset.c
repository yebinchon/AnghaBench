
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {struct arc_emac_priv* priv; } ;
struct arc_emac_mdio_bus_data {scalar_t__ reset_gpio; int msec; } ;
struct arc_emac_priv {struct arc_emac_mdio_bus_data bus_data; } ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int msleep (int ) ;

__attribute__((used)) static int arc_mdio_reset(struct mii_bus *bus)
{
 struct arc_emac_priv *priv = bus->priv;
 struct arc_emac_mdio_bus_data *data = &priv->bus_data;

 if (data->reset_gpio) {
  gpiod_set_value_cansleep(data->reset_gpio, 1);
  msleep(data->msec);
  gpiod_set_value_cansleep(data->reset_gpio, 0);
 }

 return 0;
}
