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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct mrf24j40 {int* rx_addr_buf; int /*<<< orphan*/  rx_buf_msg; int /*<<< orphan*/  spi; int /*<<< orphan*/ * rx_buf; TYPE_1__ rx_fifo_buf_trx; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE802154_MTU ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ REG_RX_FIFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mrf24j40*) ; 
 int /*<<< orphan*/  FUNC4 (struct mrf24j40*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *context)
{
	struct mrf24j40 *devrec = context;
	u16 cmd;
	int ret;

	/* if length is invalid read the full MTU */
	if (!FUNC2(devrec->rx_buf[2]))
		devrec->rx_buf[2] = IEEE802154_MTU;

	cmd = FUNC0(REG_RX_FIFO + 1);
	devrec->rx_addr_buf[0] = cmd >> 8 & 0xff;
	devrec->rx_addr_buf[1] = cmd & 0xff;
	devrec->rx_fifo_buf_trx.len = devrec->rx_buf[2];
	ret = FUNC5(devrec->spi, &devrec->rx_buf_msg);
	if (ret) {
		FUNC1(FUNC4(devrec), "failed to read rx buffer\n");
		FUNC3(devrec);
	}
}