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
struct brcmf_pub {int dummy; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pub*,int) ; 
 struct brcmf_bus* FUNC2 (struct device*) ; 

void FUNC3(struct device *dev, bool state)
{
	struct brcmf_bus *bus_if = FUNC2(dev);
	struct brcmf_pub *drvr = bus_if->drvr;

	FUNC0(TRACE, "Enter\n");

	FUNC1(drvr, state);
}