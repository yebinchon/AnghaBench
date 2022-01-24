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
struct ipheth_device {TYPE_1__* tx_urb; TYPE_1__* rx_urb; int /*<<< orphan*/  tx_buf; int /*<<< orphan*/  udev; int /*<<< orphan*/  rx_buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPHETH_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct ipheth_device *iphone)
{
	FUNC0(iphone->udev, IPHETH_BUF_SIZE, iphone->rx_buf,
			  iphone->rx_urb->transfer_dma);
	FUNC0(iphone->udev, IPHETH_BUF_SIZE, iphone->tx_buf,
			  iphone->tx_urb->transfer_dma);
	FUNC1(iphone->rx_urb);
	FUNC1(iphone->tx_urb);
}