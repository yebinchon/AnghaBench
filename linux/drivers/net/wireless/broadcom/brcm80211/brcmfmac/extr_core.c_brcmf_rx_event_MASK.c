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
 int /*<<< orphan*/  EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct brcmf_pub*,struct sk_buff*,struct brcmf_if**) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct brcmf_bus* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

void FUNC6(struct device *dev, struct sk_buff *skb)
{
	struct brcmf_if *ifp;
	struct brcmf_bus *bus_if = FUNC4(dev);
	struct brcmf_pub *drvr = bus_if->drvr;

	FUNC0(EVENT, "Enter: %s: rxp=%p\n", FUNC5(dev), skb);

	if (FUNC2(drvr, skb, &ifp))
		return;

	FUNC1(ifp->drvr, skb, 0);
	FUNC3(skb);
}