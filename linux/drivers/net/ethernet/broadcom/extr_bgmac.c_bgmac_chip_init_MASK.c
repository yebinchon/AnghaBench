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
struct bgmac {scalar_t__ loopback; TYPE_1__* net_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGMAC_CMDCFG_ML ; 
 int /*<<< orphan*/  BGMAC_CMDCFG_RPI ; 
 int /*<<< orphan*/  BGMAC_INT_RECV_LAZY ; 
 int /*<<< orphan*/  BGMAC_INT_STATUS ; 
 int BGMAC_IRL_FC_SHIFT ; 
 int /*<<< orphan*/  BGMAC_RXMAX_LENGTH ; 
 int ETHER_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC1 (struct bgmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct bgmac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bgmac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct bgmac *bgmac)
{
	/* Clear any erroneously pending interrupts */
	FUNC4(bgmac, BGMAC_INT_STATUS, ~0);

	/* 1 interrupt per received frame */
	FUNC4(bgmac, BGMAC_INT_RECV_LAZY, 1 << BGMAC_IRL_FC_SHIFT);

	/* Enable 802.3x tx flow control (honor received PAUSE frames) */
	FUNC1(bgmac, ~BGMAC_CMDCFG_RPI, 0, true);

	FUNC3(bgmac->net_dev);

	FUNC5(bgmac, bgmac->net_dev->dev_addr);

	if (bgmac->loopback)
		FUNC1(bgmac, ~0, BGMAC_CMDCFG_ML, false);
	else
		FUNC1(bgmac, ~BGMAC_CMDCFG_ML, 0, false);

	FUNC4(bgmac, BGMAC_RXMAX_LENGTH, 32 + ETHER_MAX_LEN);

	FUNC0(bgmac);

	FUNC2(bgmac);
}