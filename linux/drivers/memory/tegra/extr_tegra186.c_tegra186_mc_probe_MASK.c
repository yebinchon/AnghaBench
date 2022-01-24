#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ security; scalar_t__ override; } ;
struct tegra_mc_client {int /*<<< orphan*/  name; TYPE_1__ regs; int /*<<< orphan*/  sid; } ;
struct tegra_mc {scalar_t__ regs; int /*<<< orphan*/ * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct tegra_mc_client*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct tegra_mc* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct tegra_mc*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 struct tegra_mc_client* tegra186_mc_clients ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct resource *res;
	struct tegra_mc *mc;
	unsigned int i;
	int err = 0;

	mc = FUNC5(&pdev->dev, sizeof(*mc), GFP_KERNEL);
	if (!mc)
		return -ENOMEM;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	mc->regs = FUNC4(&pdev->dev, res);
	if (FUNC1(mc->regs))
		return FUNC2(mc->regs);

	mc->dev = &pdev->dev;

	for (i = 0; i < FUNC0(tegra186_mc_clients); i++) {
		const struct tegra_mc_client *client = &tegra186_mc_clients[i];
		u32 override, security;

		override = FUNC8(mc->regs + client->regs.override);
		security = FUNC8(mc->regs + client->regs.security);

		FUNC3(&pdev->dev, "client %s: override: %x security: %x\n",
			client->name, override, security);

		FUNC3(&pdev->dev, "setting SID %u for %s\n", client->sid,
			client->name);
		FUNC9(client->sid, mc->regs + client->regs.override);

		override = FUNC8(mc->regs + client->regs.override);
		security = FUNC8(mc->regs + client->regs.security);

		FUNC3(&pdev->dev, "client %s: override: %x security: %x\n",
			client->name, override, security);
	}

	FUNC7(pdev, mc);

	return err;
}