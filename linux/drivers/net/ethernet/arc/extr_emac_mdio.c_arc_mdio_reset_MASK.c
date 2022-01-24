#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mii_bus {struct arc_emac_priv* priv; } ;
struct arc_emac_mdio_bus_data {scalar_t__ reset_gpio; int /*<<< orphan*/  msec; } ;
struct arc_emac_priv {struct arc_emac_mdio_bus_data bus_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mii_bus *bus)
{
	struct arc_emac_priv *priv = bus->priv;
	struct arc_emac_mdio_bus_data *data = &priv->bus_data;

	if (data->reset_gpio) {
		FUNC0(data->reset_gpio, 1);
		FUNC1(data->msec);
		FUNC0(data->reset_gpio, 0);
	}

	return 0;
}