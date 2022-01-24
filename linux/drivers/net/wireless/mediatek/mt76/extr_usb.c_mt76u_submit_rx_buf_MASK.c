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
struct urb {int dummy; } ;
struct mt76_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MT_EP_IN_PKT_RX ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  mt76u_complete_rx ; 
 int /*<<< orphan*/  FUNC0 (struct mt76_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ,struct mt76_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76_dev*,struct urb*) ; 
 int FUNC2 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct mt76_dev *dev, struct urb *urb)
{
	FUNC0(dev, USB_DIR_IN, MT_EP_IN_PKT_RX, urb,
			    mt76u_complete_rx, dev);
	FUNC1(dev, urb);

	return FUNC2(urb, GFP_ATOMIC);
}