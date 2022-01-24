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
struct il_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FH39_RSSR_CHNL0_RX_STATUS_CHNL_IDLE ; 
 int /*<<< orphan*/  FH39_RSSR_STATUS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct il_priv *il)
{
	int ret;

	FUNC3(il, FUNC0(0), 0);
	ret = FUNC2(il, FH39_RSSR_STATUS,
			   FH39_RSSR_CHNL0_RX_STATUS_CHNL_IDLE,
			   FH39_RSSR_CHNL0_RX_STATUS_CHNL_IDLE,
			   1000);
	if (ret < 0)
		FUNC1("Can't stop Rx DMA.\n");

	return 0;
}