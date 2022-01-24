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
struct pucan_tx_msg {int /*<<< orphan*/  size; } ;
struct peak_canfd_priv {int dummy; } ;
struct pciefd_page {int /*<<< orphan*/  offset; } ;
struct pciefd_can {int tx_page_index; struct pciefd_page* tx_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIEFD_REG_CAN_TX_REQ_ACC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pciefd_can*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct peak_canfd_priv *ucan,
			       struct pucan_tx_msg *msg)
{
	struct pciefd_can *priv = (struct pciefd_can *)ucan;
	struct pciefd_page *page = priv->tx_pages + priv->tx_page_index;

	/* this slot is now reserved for writing the frame */
	page->offset += FUNC0(msg->size);

	/* tell the board a frame has been written in Tx DMA area */
	FUNC1(priv, 1, PCIEFD_REG_CAN_TX_REQ_ACC);

	return 0;
}