#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_bus {TYPE_2__* drvr; } ;
struct brcmf_bcdc {int /*<<< orphan*/  fws; } ;
struct TYPE_4__ {TYPE_1__* proto; } ;
struct TYPE_3__ {struct brcmf_bcdc* pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int,struct sk_buff*,struct brcmf_if**) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_if*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct brcmf_bus* FUNC5 (struct device*) ; 

void
FUNC6(struct device *dev, struct sk_buff *txp,
			    bool success)
{
	struct brcmf_bus *bus_if = FUNC5(dev);
	struct brcmf_bcdc *bcdc = bus_if->drvr->proto->pd;
	struct brcmf_if *ifp;

	/* await txstatus signal for firmware if active */
	if (FUNC1(bcdc->fws)) {
		if (!success)
			FUNC0(bcdc->fws, txp);
	} else {
		if (FUNC2(bus_if->drvr, false, txp, &ifp))
			FUNC4(txp);
		else
			FUNC3(ifp, txp, success);
	}
}