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
typedef  scalar_t__ uint ;
struct device {int dummy; } ;
struct brcmf_pub {int /*<<< orphan*/  hdrlen; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;

/* Variables and functions */
 struct brcmf_bus* FUNC0 (struct device*) ; 

void FUNC1(struct device *dev, uint len)
{
	struct brcmf_bus *bus_if = FUNC0(dev);
	struct brcmf_pub *drvr = bus_if->drvr;

	if (drvr) {
		drvr->hdrlen += len;
	}
}