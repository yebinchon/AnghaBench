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
struct realtek_smi {int /*<<< orphan*/  map; int /*<<< orphan*/  dev; } ;
struct phy_device {int dummy; } ;
struct dsa_switch {struct realtek_smi* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RTL8366RB_PECR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct realtek_smi*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct dsa_switch *ds, int port,
		      struct phy_device *phy)
{
	struct realtek_smi *smi = ds->priv;
	int ret;

	FUNC1(smi->dev, "enable port %d\n", port);
	ret = FUNC3(smi->map, RTL8366RB_PECR, FUNC0(port),
				 0);
	if (ret)
		return ret;

	FUNC2(smi, port, true);
	return 0;
}