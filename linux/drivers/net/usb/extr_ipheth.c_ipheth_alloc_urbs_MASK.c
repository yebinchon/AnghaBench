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
typedef  int /*<<< orphan*/  u8 ;
struct urb {int /*<<< orphan*/  transfer_dma; } ;
struct ipheth_device {int /*<<< orphan*/  udev; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; struct urb* rx_urb; struct urb* tx_urb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPHETH_BUF_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 

__attribute__((used)) static int FUNC4(struct ipheth_device *iphone)
{
	struct urb *tx_urb = NULL;
	struct urb *rx_urb = NULL;
	u8 *tx_buf = NULL;
	u8 *rx_buf = NULL;

	tx_urb = FUNC1(0, GFP_KERNEL);
	if (tx_urb == NULL)
		goto error_nomem;

	rx_urb = FUNC1(0, GFP_KERNEL);
	if (rx_urb == NULL)
		goto free_tx_urb;

	tx_buf = FUNC0(iphone->udev, IPHETH_BUF_SIZE,
				    GFP_KERNEL, &tx_urb->transfer_dma);
	if (tx_buf == NULL)
		goto free_rx_urb;

	rx_buf = FUNC0(iphone->udev, IPHETH_BUF_SIZE,
				    GFP_KERNEL, &rx_urb->transfer_dma);
	if (rx_buf == NULL)
		goto free_tx_buf;


	iphone->tx_urb = tx_urb;
	iphone->rx_urb = rx_urb;
	iphone->tx_buf = tx_buf;
	iphone->rx_buf = rx_buf;
	return 0;

free_tx_buf:
	FUNC2(iphone->udev, IPHETH_BUF_SIZE, tx_buf,
			  tx_urb->transfer_dma);
free_rx_urb:
	FUNC3(rx_urb);
free_tx_urb:
	FUNC3(tx_urb);
error_nomem:
	return -ENOMEM;
}