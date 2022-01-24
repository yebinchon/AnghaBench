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
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  dev; scalar_t__ status; struct gs_tx_context* context; } ;
struct net_device {int dummy; } ;
struct gs_tx_context {int /*<<< orphan*/  echo_id; struct gs_can* dev; } ;
struct gs_can {struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct urb *urb)
{
	struct gs_tx_context *txc = urb->context;
	struct gs_can *dev = txc->dev;
	struct net_device *netdev = dev->netdev;

	if (urb->status)
		FUNC0(netdev, "usb xmit fail %d\n", txc->echo_id);

	FUNC1(urb->dev,
			  urb->transfer_buffer_length,
			  urb->transfer_buffer,
			  urb->transfer_dma);
}