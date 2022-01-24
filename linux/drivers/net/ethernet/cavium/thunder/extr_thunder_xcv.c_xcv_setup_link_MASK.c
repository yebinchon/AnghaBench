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
typedef  int u64 ;
struct TYPE_2__ {scalar_t__ reg_base; } ;

/* Variables and functions */
 int RX_DATA_RESET ; 
 int RX_PKT_RESET ; 
 int TX_DATA_RESET ; 
 int TX_PKT_RESET ; 
 scalar_t__ XCV_BATCH_CRD_RET ; 
 scalar_t__ XCV_CTL ; 
 scalar_t__ XCV_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 TYPE_1__* xcv ; 

void FUNC3(bool link_up, int link_speed)
{
	u64  cfg;
	int speed = 2;

	if (!xcv) {
		FUNC0("XCV init not done, probe may have failed\n");
		return;
	}

	if (link_speed == 100)
		speed = 1;
	else if (link_speed == 10)
		speed = 0;

	if (link_up) {
		/* set operating speed */
		cfg = FUNC1(xcv->reg_base + XCV_CTL);
		cfg &= ~0x03;
		cfg |= speed;
		FUNC2(cfg, xcv->reg_base + XCV_CTL);

		/* Reset datapaths */
		cfg = FUNC1(xcv->reg_base + XCV_RESET);
		cfg |= TX_DATA_RESET | RX_DATA_RESET;
		FUNC2(cfg, xcv->reg_base + XCV_RESET);

		/* Enable the packet flow */
		cfg = FUNC1(xcv->reg_base + XCV_RESET);
		cfg |= TX_PKT_RESET | RX_PKT_RESET;
		FUNC2(cfg, xcv->reg_base + XCV_RESET);

		/* Return credits to RGX */
		FUNC2(0x01, xcv->reg_base + XCV_BATCH_CRD_RET);
	} else {
		/* Disable packet flow */
		cfg = FUNC1(xcv->reg_base + XCV_RESET);
		cfg &= ~(TX_PKT_RESET | RX_PKT_RESET);
		FUNC2(cfg, xcv->reg_base + XCV_RESET);
		FUNC1(xcv->reg_base + XCV_RESET);
	}
}