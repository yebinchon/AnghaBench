#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  transfer_flags; } ;
struct smsusb_urb_t {TYPE_1__ urb; TYPE_3__* cb; } ;
struct smsusb_device_t {int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  in_ep; int /*<<< orphan*/  udev; int /*<<< orphan*/  coredev; } ;
struct TYPE_5__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  URB_FREE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smsusb_onresponse ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smsusb_urb_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct smsusb_device_t *dev,
			     struct smsusb_urb_t *surb)
{
	if (!surb->cb) {
		/* This function can sleep */
		surb->cb = FUNC1(dev->coredev);
		if (!surb->cb) {
			FUNC0("smscore_getbuffer(...) returned NULL\n");
			return -ENOMEM;
		}
	}

	FUNC2(
		&surb->urb,
		dev->udev,
		FUNC3(dev->udev, dev->in_ep),
		surb->cb->p,
		dev->buffer_size,
		smsusb_onresponse,
		surb
	);
	surb->urb.transfer_flags |= URB_FREE_BUFFER;

	return FUNC4(&surb->urb, GFP_ATOMIC);
}