#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; int /*<<< orphan*/  rx_tl; int /*<<< orphan*/  net; int /*<<< orphan*/  rx_urb; TYPE_4__* rx_skb; int /*<<< orphan*/  usb; } ;
typedef  TYPE_1__ pegasus_t ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PEGASUS_MTU ; 
 int PEGASUS_RX_URB_FAIL ; 
 int PEGASUS_UNPLUG ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  read_bulk_callback ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	pegasus_t *pegasus;
	int status;

	pegasus = (pegasus_t *) data;
	if (pegasus->flags & PEGASUS_UNPLUG)
		return;

	if (pegasus->flags & PEGASUS_RX_URB_FAIL)
		if (pegasus->rx_skb)
			goto try_again;
	if (pegasus->rx_skb == NULL)
		pegasus->rx_skb = FUNC0(pegasus->net,
							      PEGASUS_MTU,
							      GFP_ATOMIC);
	if (pegasus->rx_skb == NULL) {
		FUNC2(pegasus, rx_err, pegasus->net, "low on memory\n");
		FUNC3(&pegasus->rx_tl);
		return;
	}
	FUNC4(pegasus->rx_urb, pegasus->usb,
			  FUNC5(pegasus->usb, 1),
			  pegasus->rx_skb->data, PEGASUS_MTU,
			  read_bulk_callback, pegasus);
try_again:
	status = FUNC6(pegasus->rx_urb, GFP_ATOMIC);
	if (status == -ENODEV)
		FUNC1(pegasus->net);
	else if (status) {
		pegasus->flags |= PEGASUS_RX_URB_FAIL;
		FUNC3(&pegasus->rx_tl);
	} else {
		pegasus->flags &= ~PEGASUS_RX_URB_FAIL;
	}
}