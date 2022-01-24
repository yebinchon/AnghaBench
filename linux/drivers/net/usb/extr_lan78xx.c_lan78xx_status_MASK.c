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
typedef  int u32 ;
struct urb {int actual_length; int /*<<< orphan*/  transfer_buffer; } ;
struct TYPE_2__ {scalar_t__ phyirq; } ;
struct lan78xx_net {int /*<<< orphan*/  net; TYPE_1__ domain_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_LINK_RESET ; 
 int INT_ENP_PHY_INT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lan78xx_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lan78xx_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC7(struct lan78xx_net *dev, struct urb *urb)
{
	u32 intdata;

	if (urb->actual_length != 4) {
		FUNC5(dev->net,
			    "unexpected urb length %d", urb->actual_length);
		return;
	}

	intdata = FUNC1(urb->transfer_buffer);

	if (intdata & INT_ENP_PHY_INT) {
		FUNC6(dev, link, dev->net, "PHY INTR: 0x%08x\n", intdata);
		FUNC2(dev, EVENT_LINK_RESET);

		if (dev->domain_data.phyirq > 0) {
			FUNC3();
			FUNC0(dev->domain_data.phyirq);
			FUNC4();
		}
	} else
		FUNC5(dev->net,
			    "unexpected interrupt: 0x%08x\n", intdata);
}