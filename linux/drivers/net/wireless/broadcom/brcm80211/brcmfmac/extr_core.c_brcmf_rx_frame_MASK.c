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
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int /*<<< orphan*/  drvr; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMILCP_SUBTYPE_VENDOR_LONG ; 
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_if*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_if*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct brcmf_pub*,struct sk_buff*,struct brcmf_if**) ; 
 struct brcmf_bus* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

void FUNC8(struct device *dev, struct sk_buff *skb, bool handle_event)
{
	struct brcmf_if *ifp;
	struct brcmf_bus *bus_if = FUNC6(dev);
	struct brcmf_pub *drvr = bus_if->drvr;

	FUNC0(DATA, "Enter: %s: rxp=%p\n", FUNC7(dev), skb);

	if (FUNC5(drvr, skb, &ifp))
		return;

	if (FUNC3(skb)) {
		FUNC4(ifp, skb);
	} else {
		/* Process special event packets */
		if (handle_event)
			FUNC1(ifp->drvr, skb,
					       BCMILCP_SUBTYPE_VENDOR_LONG);

		FUNC2(ifp, skb);
	}
}