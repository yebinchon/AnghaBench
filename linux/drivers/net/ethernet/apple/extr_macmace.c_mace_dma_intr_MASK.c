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
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct mace_frame {int dummy; } ;
struct mace_data {int rx_slot; int rx_tail; int tx_sloti; int /*<<< orphan*/  tx_count; scalar_t__ rx_ring; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int MACE_BUFF_SIZE ; 
 int N_RX_RING ; 
 scalar_t__ PSC_ENETRD_CMD ; 
 int /*<<< orphan*/  PSC_ENETRD_CTL ; 
 scalar_t__ PSC_ENETRD_LEN ; 
 scalar_t__ PSC_ENETWR_CMD ; 
 int /*<<< orphan*/  PSC_ENETWR_CTL ; 
 scalar_t__ PSC_MYSTERY ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct mace_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct mace_data* FUNC4 (struct net_device*) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *) dev_id;
	struct mace_data *mp = FUNC4(dev);
	int left, head;
	u16 status;
	u32 baka;

	/* Not sure what this does */

	while ((baka = FUNC5(PSC_MYSTERY)) != FUNC5(PSC_MYSTERY));
	if (!(baka & 0x60000000)) return IRQ_NONE;

	/*
	 * Process the read queue
	 */

	status = FUNC6(PSC_ENETRD_CTL);

	if (status & 0x2000) {
		FUNC2(dev);
	} else if (status & 0x0100) {
		FUNC7(PSC_ENETRD_CMD + mp->rx_slot, 0x1100);

		left = FUNC5(PSC_ENETRD_LEN + mp->rx_slot);
		head = N_RX_RING - left;

		/* Loop through the ring buffer and process new packages */

		while (mp->rx_tail < head) {
			FUNC0(dev, (struct mace_frame*) (mp->rx_ring
				+ (mp->rx_tail * MACE_BUFF_SIZE)));
			mp->rx_tail++;
		}

		/* If we're out of buffers in this ring then switch to */
		/* the other set, otherwise just reactivate this one.  */

		if (!left) {
			FUNC1(dev, mp->rx_slot);
			mp->rx_slot ^= 0x10;
		} else {
			FUNC7(PSC_ENETRD_CMD + mp->rx_slot, 0x9800);
		}
	}

	/*
	 * Process the write queue
	 */

	status = FUNC6(PSC_ENETWR_CTL);

	if (status & 0x2000) {
		FUNC3(dev);
	} else if (status & 0x0100) {
		FUNC7(PSC_ENETWR_CMD + mp->tx_sloti, 0x0100);
		mp->tx_sloti ^= 0x10;
		mp->tx_count++;
	}
	return IRQ_HANDLED;
}