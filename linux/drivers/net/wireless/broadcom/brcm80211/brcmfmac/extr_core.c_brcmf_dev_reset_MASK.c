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
struct brcmf_pub {scalar_t__* iflist; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_TERMINATED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct brcmf_bus* FUNC1 (struct device*) ; 

void FUNC2(struct device *dev)
{
	struct brcmf_bus *bus_if = FUNC1(dev);
	struct brcmf_pub *drvr = bus_if->drvr;

	if (drvr == NULL)
		return;

	if (drvr->iflist[0])
		FUNC0(drvr->iflist[0], BRCMF_C_TERMINATED, 1);
}