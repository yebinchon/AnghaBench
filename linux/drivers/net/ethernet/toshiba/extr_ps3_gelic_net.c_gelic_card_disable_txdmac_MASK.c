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
struct gelic_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gelic_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct gelic_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gelic_card*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gelic_card *card)
{
	int status;

	/* this hvc blocks until the DMA in progress really stopped */
	status = FUNC4(FUNC0(card), FUNC3(card));
	if (status)
		FUNC2(FUNC1(card),
			"lv1_net_stop_tx_dma failed, status=%d\n", status);
}