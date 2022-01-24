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
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  complete; } ;
struct TYPE_3__ {int len; } ;
struct mrf24j40 {int* rx_buf; TYPE_2__ rx_msg; int /*<<< orphan*/  spi; TYPE_1__ rx_trx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_RX_FIFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mrf24j40_handle_rx_read_buf ; 
 int /*<<< orphan*/  FUNC2 (struct mrf24j40*) ; 
 int /*<<< orphan*/  FUNC3 (struct mrf24j40*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(void *context)
{
	struct mrf24j40 *devrec = context;
	u16 cmd;
	int ret;

	/* read the length of received frame */
	devrec->rx_msg.complete = mrf24j40_handle_rx_read_buf;
	devrec->rx_trx.len = 3;
	cmd = FUNC0(REG_RX_FIFO);
	devrec->rx_buf[0] = cmd >> 8 & 0xff;
	devrec->rx_buf[1] = cmd & 0xff;

	ret = FUNC4(devrec->spi, &devrec->rx_msg);
	if (ret) {
		FUNC1(FUNC3(devrec), "failed to read rx buffer length\n");
		FUNC2(devrec);
	}
}