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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct hso_shared_int {int /*<<< orphan*/  shared_intr_urb; struct hso_shared_int* shared_intr_buf; int /*<<< orphan*/  shared_int_lock; TYPE_1__* intr_endp; } ;
struct TYPE_2__ {int /*<<< orphan*/  wMaxPacketSize; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  USB_ENDPOINT_XFER_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC1 (struct usb_interface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hso_shared_int*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
struct hso_shared_int *FUNC8(struct usb_interface *interface)
{
	struct hso_shared_int *mux = FUNC3(sizeof(*mux), GFP_KERNEL);

	if (!mux)
		return NULL;

	mux->intr_endp = FUNC1(interface, USB_ENDPOINT_XFER_INT,
				    USB_DIR_IN);
	if (!mux->intr_endp) {
		FUNC0(&interface->dev, "Can't find INT IN endpoint\n");
		goto exit;
	}

	mux->shared_intr_urb = FUNC6(0, GFP_KERNEL);
	if (!mux->shared_intr_urb)
		goto exit;
	mux->shared_intr_buf =
		FUNC3(FUNC4(mux->intr_endp->wMaxPacketSize),
			GFP_KERNEL);
	if (!mux->shared_intr_buf)
		goto exit;

	FUNC5(&mux->shared_int_lock);

	return mux;

exit:
	FUNC2(mux->shared_intr_buf);
	FUNC7(mux->shared_intr_urb);
	FUNC2(mux);
	return NULL;
}