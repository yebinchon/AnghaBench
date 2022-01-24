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
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
struct TYPE_3__ {int command; int config1; int config2; } ;
struct TYPE_4__ {int rx_head; TYPE_1__ regs; scalar_t__ tx_tail; scalar_t__ tx_head; } ;

/* Variables and functions */
 int CFG1_BUFSELSTAT0 ; 
 int CFG1_LOCBUFMEM ; 
 int CFG1_TRANSEND ; 
 int CFG2_CTRLO ; 
 int CFG2_RESET ; 
 int CMD_ENINTRX ; 
 int CMD_ENINTTX ; 
 int CMD_RXOFF ; 
 int CMD_RXON ; 
 int CMD_TXOFF ; 
 int /*<<< orphan*/  REG_BUFWIN ; 
 int /*<<< orphan*/  REG_COMMAND ; 
 int /*<<< orphan*/  REG_CONFIG1 ; 
 int /*<<< orphan*/  REG_CONFIG2 ; 
 int /*<<< orphan*/  REG_RECVEND ; 
 int /*<<< orphan*/  REG_RECVPTR ; 
 int /*<<< orphan*/  REG_STATUS ; 
 int /*<<< orphan*/  REG_TRANSMITPTR ; 
 int RX_START ; 
 int STAT_RXON ; 
 int STAT_TXON ; 
 int TX_END ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  buffer_write ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(struct net_device *dev)
{
	int i;

	/* Reset the chip */
	FUNC3(CFG2_RESET, REG_CONFIG2);
	FUNC7(4);

	FUNC6(dev)->regs.command = 0;
	FUNC3(CMD_RXOFF|CMD_TXOFF, REG_COMMAND);
	while (FUNC1(REG_STATUS) & (STAT_RXON|STAT_TXON))
		FUNC0();

	FUNC3(FUNC6(dev)->regs.config1 | CFG1_BUFSELSTAT0, REG_CONFIG1);
	for (i = 0; i < 6; i++)
		FUNC2(dev->dev_addr[i], REG_BUFWIN);

	FUNC6(dev)->tx_head	= 0;
	FUNC6(dev)->tx_tail	= 0;
	FUNC6(dev)->regs.config2 |= CFG2_CTRLO;
	FUNC6(dev)->rx_head	= RX_START;

	FUNC3(FUNC6(dev)->regs.config1 | CFG1_TRANSEND, REG_CONFIG1);
	FUNC3((TX_END>>8) - 1, REG_BUFWIN);
	FUNC3(FUNC6(dev)->rx_head, REG_RECVPTR);
	FUNC3(FUNC6(dev)->rx_head >> 8, REG_RECVEND);
	FUNC3(0, REG_TRANSMITPTR);
	FUNC3(FUNC6(dev)->regs.config2, REG_CONFIG2);
	FUNC3(FUNC6(dev)->regs.config1 | CFG1_LOCBUFMEM, REG_CONFIG1);

	FUNC4(dev, buffer_write, 0);
	FUNC5(dev, 0);

	FUNC6(dev)->regs.command = CMD_ENINTRX | CMD_ENINTTX;
	FUNC3(FUNC6(dev)->regs.command | CMD_RXON, REG_COMMAND);
}