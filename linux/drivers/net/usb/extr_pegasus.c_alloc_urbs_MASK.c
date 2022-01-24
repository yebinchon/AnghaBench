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
struct TYPE_3__ {void* rx_urb; void* tx_urb; void* intr_urb; } ;
typedef  TYPE_1__ pegasus_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(pegasus_t *pegasus)
{
	int res = -ENOMEM;

	pegasus->rx_urb = FUNC0(0, GFP_KERNEL);
	if (!pegasus->rx_urb) {
		return res;
	}
	pegasus->tx_urb = FUNC0(0, GFP_KERNEL);
	if (!pegasus->tx_urb) {
		FUNC1(pegasus->rx_urb);
		return res;
	}
	pegasus->intr_urb = FUNC0(0, GFP_KERNEL);
	if (!pegasus->intr_urb) {
		FUNC1(pegasus->tx_urb);
		FUNC1(pegasus->rx_urb);
		return res;
	}

	return 0;
}