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
typedef  int u32 ;
struct nb8800_priv {int dummy; } ;
struct mii_bus {struct nb8800_priv* priv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int MDIO_STS_ERR ; 
 int /*<<< orphan*/  NB8800_MDIO_STS ; 
 int FUNC2 (struct mii_bus*,int) ; 
 int FUNC3 (struct nb8800_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int phy_id, int reg)
{
	struct nb8800_priv *priv = bus->priv;
	u32 val;
	int err;

	err = FUNC2(bus, FUNC0(phy_id) | FUNC1(reg));
	if (err)
		return err;

	val = FUNC3(priv, NB8800_MDIO_STS);
	if (val & MDIO_STS_ERR)
		return 0xffff;

	return val & 0xffff;
}