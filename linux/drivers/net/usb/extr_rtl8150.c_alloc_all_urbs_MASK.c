#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* tx_urb; void* rx_urb; void* intr_urb; } ;
typedef  TYPE_1__ rtl8150_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(rtl8150_t * dev)
{
	dev->rx_urb = FUNC0(0, GFP_KERNEL);
	if (!dev->rx_urb)
		return 0;
	dev->tx_urb = FUNC0(0, GFP_KERNEL);
	if (!dev->tx_urb) {
		FUNC1(dev->rx_urb);
		return 0;
	}
	dev->intr_urb = FUNC0(0, GFP_KERNEL);
	if (!dev->intr_urb) {
		FUNC1(dev->rx_urb);
		FUNC1(dev->tx_urb);
		return 0;
	}

	return 1;
}