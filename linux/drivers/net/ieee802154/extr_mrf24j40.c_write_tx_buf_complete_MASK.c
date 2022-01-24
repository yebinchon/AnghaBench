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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/ * complete; } ;
struct mrf24j40 {TYPE_1__ tx_post_msg; int /*<<< orphan*/  spi; int /*<<< orphan*/ * tx_post_buf; int /*<<< orphan*/  tx_skb; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_TXNACKREQ ; 
 int /*<<< orphan*/  BIT_TXNSECEN ; 
 int /*<<< orphan*/  BIT_TXNTRIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_TXNCON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mrf24j40*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(void *context)
{
	struct mrf24j40 *devrec = context;
	__le16 fc = FUNC2(devrec->tx_skb);
	u8 val = BIT_TXNTRIG;
	int ret;

	if (FUNC4(fc))
		val |= BIT_TXNSECEN;

	if (FUNC3(fc))
		val |= BIT_TXNACKREQ;

	devrec->tx_post_msg.complete = NULL;
	devrec->tx_post_buf[0] = FUNC0(REG_TXNCON);
	devrec->tx_post_buf[1] = val;

	ret = FUNC6(devrec->spi, &devrec->tx_post_msg);
	if (ret)
		FUNC1(FUNC5(devrec), "SPI write Failed for transmit buf\n");
}