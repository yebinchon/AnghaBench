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
struct net_device {int dummy; } ;
struct emac_board_info {int emacrx_completed_flag; int /*<<< orphan*/  lock; scalar_t__ membase; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ EMAC_INT_CTL_REG ; 
 scalar_t__ EMAC_INT_STA_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct emac_board_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int) ; 
 struct emac_board_info* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct emac_board_info*) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct emac_board_info *db = FUNC4(dev);
	int int_status;
	unsigned long flags;
	unsigned int reg_val;

	/* A real interrupt coming */

	/* holders of db->lock must always block IRQs */
	FUNC7(&db->lock, flags);

	/* Disable all interrupts */
	FUNC9(0, db->membase + EMAC_INT_CTL_REG);

	/* Got EMAC interrupt status */
	/* Got ISR */
	int_status = FUNC6(db->membase + EMAC_INT_STA_REG);
	/* Clear ISR status */
	FUNC9(int_status, db->membase + EMAC_INT_STA_REG);

	if (FUNC5(db))
		FUNC0(db->dev, "emac interrupt %02x\n", int_status);

	/* Received the coming packet */
	if ((int_status & 0x100) && (db->emacrx_completed_flag == 1)) {
		/* carrier lost */
		db->emacrx_completed_flag = 0;
		FUNC1(dev);
	}

	/* Transmit Interrupt check */
	if (int_status & (0x01 | 0x02))
		FUNC2(dev, db, int_status);

	if (int_status & (0x04 | 0x08))
		FUNC3(dev, " ab : %x\n", int_status);

	/* Re-enable interrupt mask */
	if (db->emacrx_completed_flag == 1) {
		reg_val = FUNC6(db->membase + EMAC_INT_CTL_REG);
		reg_val |= (0xf << 0) | (0x01 << 8);
		FUNC9(reg_val, db->membase + EMAC_INT_CTL_REG);
	}
	FUNC8(&db->lock, flags);

	return IRQ_HANDLED;
}