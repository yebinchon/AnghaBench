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
struct device {int dummy; } ;
struct brcmf_pub {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  ops; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;

/* Variables and functions */
 struct brcmf_bus* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct device *dev)
{
	struct brcmf_bus *bus_if = FUNC0(dev);
	struct brcmf_pub *drvr = bus_if->drvr;

	if (!drvr)
		return;

	bus_if->drvr = NULL;

	FUNC1(drvr->ops);

	FUNC2(drvr->wiphy);
}