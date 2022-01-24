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
struct realtek_smi {int cpu_port; int /*<<< orphan*/  map; int /*<<< orphan*/  dev; } ;
struct phy_device {int dummy; } ;
struct dsa_switch {struct realtek_smi* priv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  RTL8366RB_MAC_FORCE_CTRL_REG ; 
 int /*<<< orphan*/  RTL8366RB_PAACR2 ; 
 int RTL8366RB_PAACR_CPU_PORT ; 
 int /*<<< orphan*/  RTL8366RB_PECR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct dsa_switch *ds, int port,
				  struct phy_device *phydev)
{
	struct realtek_smi *smi = ds->priv;
	int ret;

	if (port != smi->cpu_port)
		return;

	FUNC1(smi->dev, "adjust link on CPU port (%d)\n", port);

	/* Force the fixed CPU port into 1Gbit mode, no autonegotiation */
	ret = FUNC2(smi->map, RTL8366RB_MAC_FORCE_CTRL_REG,
				 FUNC0(port), FUNC0(port));
	if (ret)
		return;

	ret = FUNC2(smi->map, RTL8366RB_PAACR2,
				 0xFF00U,
				 RTL8366RB_PAACR_CPU_PORT << 8);
	if (ret)
		return;

	/* Enable the CPU port */
	ret = FUNC2(smi->map, RTL8366RB_PECR, FUNC0(port),
				 0);
	if (ret)
		return;
}