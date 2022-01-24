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
struct TYPE_2__ {int /*<<< orphan*/ * complete; } ;
struct mrf24j40 {int* rx_buf; TYPE_1__ rx_msg; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_BBREG1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mrf24j40*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct mrf24j40 *devrec)
{
	int ret;

	/* Turn back on reception of packets off the air. */
	devrec->rx_msg.complete = NULL;
	devrec->rx_buf[0] = FUNC0(REG_BBREG1);
	devrec->rx_buf[1] = 0x00; /* CLR RXDECINV */
	ret = FUNC3(devrec->spi, &devrec->rx_msg);
	if (ret)
		FUNC1(FUNC2(devrec), "failed to unlock rx buffer\n");
}