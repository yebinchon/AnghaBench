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
typedef  int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {int ctrlmode; } ;
struct m_can_classdev {int version; scalar_t__ is_peripheral; TYPE_1__ can; struct sk_buff* tx_skb; struct net_device* net; } ;
struct canfd_frame {int can_id; int len; int flags; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int CANFD_BRS ; 
 int CAN_CTRLMODE_FD ; 
 int CAN_EFF_FLAG ; 
 int CAN_EFF_MASK ; 
 int CAN_RTR_FLAG ; 
 int CAN_SFF_MASK ; 
 int CCCR_CMR_CAN ; 
 int CCCR_CMR_CANFD ; 
 int CCCR_CMR_CANFD_BRS ; 
 int CCCR_CMR_MASK ; 
 int CCCR_CMR_SHIFT ; 
 int /*<<< orphan*/  M_CAN_CCCR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_CAN_FIFO_DLC ; 
 int /*<<< orphan*/  M_CAN_FIFO_ID ; 
 int /*<<< orphan*/  M_CAN_TXBAR ; 
 int /*<<< orphan*/  M_CAN_TXBTIE ; 
 int /*<<< orphan*/  M_CAN_TXFQS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int TXFQS_TFQPI_MASK ; 
 int TXFQS_TFQPI_SHIFT ; 
 int TX_BUF_BRS ; 
 int TX_BUF_EFC ; 
 int TX_BUF_FDF ; 
 int TX_BUF_MM_MASK ; 
 int TX_BUF_MM_SHIFT ; 
 int TX_BUF_RTR ; 
 int TX_BUF_XTD ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct m_can_classdev*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct net_device*,int) ; 
 int FUNC7 (struct m_can_classdev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct m_can_classdev*) ; 
 int /*<<< orphan*/  FUNC9 (struct m_can_classdev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC12(struct m_can_classdev *cdev)
{
	struct canfd_frame *cf = (struct canfd_frame *)cdev->tx_skb->data;
	struct net_device *dev = cdev->net;
	struct sk_buff *skb = cdev->tx_skb;
	u32 id, cccr, fdflags;
	int i;
	int putidx;

	/* Generate ID field for TX buffer Element */
	/* Common to all supported M_CAN versions */
	if (cf->can_id & CAN_EFF_FLAG) {
		id = cf->can_id & CAN_EFF_MASK;
		id |= TX_BUF_XTD;
	} else {
		id = ((cf->can_id & CAN_SFF_MASK) << 18);
	}

	if (cf->can_id & CAN_RTR_FLAG)
		id |= TX_BUF_RTR;

	if (cdev->version == 30) {
		FUNC11(dev);

		/* message ram configuration */
		FUNC5(cdev, 0, M_CAN_FIFO_ID, id);
		FUNC5(cdev, 0, M_CAN_FIFO_DLC,
				 FUNC2(cf->len) << 16);

		for (i = 0; i < cf->len; i += 4)
			FUNC5(cdev, 0,
					 FUNC0(i / 4),
					 *(u32 *)(cf->data + i));

		FUNC3(skb, dev, 0);

		if (cdev->can.ctrlmode & CAN_CTRLMODE_FD) {
			cccr = FUNC7(cdev, M_CAN_CCCR);
			cccr &= ~(CCCR_CMR_MASK << CCCR_CMR_SHIFT);
			if (FUNC1(skb)) {
				if (cf->flags & CANFD_BRS)
					cccr |= CCCR_CMR_CANFD_BRS <<
						CCCR_CMR_SHIFT;
				else
					cccr |= CCCR_CMR_CANFD <<
						CCCR_CMR_SHIFT;
			} else {
				cccr |= CCCR_CMR_CAN << CCCR_CMR_SHIFT;
			}
			FUNC9(cdev, M_CAN_CCCR, cccr);
		}
		FUNC9(cdev, M_CAN_TXBTIE, 0x1);
		FUNC9(cdev, M_CAN_TXBAR, 0x1);
		/* End of xmit function for version 3.0.x */
	} else {
		/* Transmit routine for version >= v3.1.x */

		/* Check if FIFO full */
		if (FUNC8(cdev)) {
			/* This shouldn't happen */
			FUNC11(dev);
			FUNC10(dev,
				    "TX queue active although FIFO is full.");

			if (cdev->is_peripheral) {
				FUNC4(skb);
				dev->stats.tx_dropped++;
				return NETDEV_TX_OK;
			} else {
				return NETDEV_TX_BUSY;
			}
		}

		/* get put index for frame */
		putidx = ((FUNC7(cdev, M_CAN_TXFQS) & TXFQS_TFQPI_MASK)
				  >> TXFQS_TFQPI_SHIFT);
		/* Write ID Field to FIFO Element */
		FUNC5(cdev, putidx, M_CAN_FIFO_ID, id);

		/* get CAN FD configuration of frame */
		fdflags = 0;
		if (FUNC1(skb)) {
			fdflags |= TX_BUF_FDF;
			if (cf->flags & CANFD_BRS)
				fdflags |= TX_BUF_BRS;
		}

		/* Construct DLC Field. Also contains CAN-FD configuration
		 * use put index of fifo as message marker
		 * it is used in TX interrupt for
		 * sending the correct echo frame
		 */
		FUNC5(cdev, putidx, M_CAN_FIFO_DLC,
				 ((putidx << TX_BUF_MM_SHIFT) &
				  TX_BUF_MM_MASK) |
				 (FUNC2(cf->len) << 16) |
				 fdflags | TX_BUF_EFC);

		for (i = 0; i < cf->len; i += 4)
			FUNC5(cdev, putidx, FUNC0(i / 4),
					 *(u32 *)(cf->data + i));

		/* Push loopback echo.
		 * Will be looped back on TX interrupt based on message marker
		 */
		FUNC3(skb, dev, putidx);

		/* Enable TX FIFO element to start transfer  */
		FUNC9(cdev, M_CAN_TXBAR, (1 << putidx));

		/* stop network queue if fifo full */
		if (FUNC8(cdev) ||
		    FUNC6(dev, putidx))
			FUNC11(dev);
	}

	return NETDEV_TX_OK;
}