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
typedef  int /*<<< orphan*/  u8 ;
struct pcan_pccard {int chan_count; TYPE_2__* pdev; TYPE_1__* channel; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct net_device* netdev; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCC_LED_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct pcan_pccard*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcan_pccard*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pcan_pccard*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct pcan_pccard *card)
{
	int i;
	u8 led_mask = 0;

	for (i = 0; i < card->chan_count; i++) {
		struct net_device *netdev;
		char name[IFNAMSIZ];

		led_mask |= FUNC0(i);

		netdev = card->channel[i].netdev;
		if (!netdev)
			continue;

		FUNC6(name, netdev->name, IFNAMSIZ);

		FUNC7(netdev);

		FUNC2(netdev);

		FUNC1(&card->pdev->dev, "%s removed\n", name);
	}

	/* do it only if device not removed */
	if (FUNC3(card)) {
		FUNC5(card, led_mask, PCC_LED_OFF);
		FUNC4(card, 0);
	}
}