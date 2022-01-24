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
 int MDIO_CMD_GO ; 
 int /*<<< orphan*/  NB8800_MDIO_CMD ; 
 int FUNC0 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct nb8800_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct mii_bus *bus, u32 cmd)
{
	struct nb8800_priv *priv = bus->priv;
	int err;

	err = FUNC0(bus);
	if (err)
		return err;

	FUNC1(priv, NB8800_MDIO_CMD, cmd);
	FUNC2(10);
	FUNC1(priv, NB8800_MDIO_CMD, cmd | MDIO_CMD_GO);

	return FUNC0(bus);
}