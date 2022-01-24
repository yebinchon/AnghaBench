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
struct dnet {int dummy; } ;

/* Variables and functions */
 int DNET_FIFO_RX_CMD_AF_TH ; 
 int DNET_FIFO_TX_DATA_AE_TH ; 
 int /*<<< orphan*/  DNET_INTERNAL_MODE_FCEN ; 
 int /*<<< orphan*/  DNET_INTERNAL_MODE_REG ; 
 int DNET_SYS_CTL_RXFIFOFLUSH ; 
 int DNET_SYS_CTL_TXFIFOFLUSH ; 
 int /*<<< orphan*/  RX_FIFO_TH ; 
 int /*<<< orphan*/  SYS_CTL ; 
 int /*<<< orphan*/  TX_FIFO_TH ; 
 int /*<<< orphan*/  FUNC0 (struct dnet*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct dnet *bp)
{
	/* put ts_mac in IDLE state i.e. disable rx/tx */
	FUNC1(bp, DNET_INTERNAL_MODE_REG, DNET_INTERNAL_MODE_FCEN);

	/*
	 * RX FIFO almost full threshold: only cmd FIFO almost full is
	 * implemented for RX side
	 */
	FUNC0(bp, DNET_FIFO_RX_CMD_AF_TH, RX_FIFO_TH);
	/*
	 * TX FIFO almost empty threshold: only data FIFO almost empty
	 * is implemented for TX side
	 */
	FUNC0(bp, DNET_FIFO_TX_DATA_AE_TH, TX_FIFO_TH);

	/* flush rx/tx fifos */
	FUNC0(bp, DNET_SYS_CTL_RXFIFOFLUSH | DNET_SYS_CTL_TXFIFOFLUSH,
			SYS_CTL);
	FUNC2(1);
	FUNC0(bp, 0, SYS_CTL);
}