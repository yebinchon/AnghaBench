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
struct urb {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct ucan_priv {int /*<<< orphan*/  rx_urbs; int /*<<< orphan*/  in_ep_size; int /*<<< orphan*/  in_ep_addr; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UCAN_MAX_RX_URBS ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct urb**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ucan_priv*,struct urb**) ; 
 int /*<<< orphan*/  ucan_read_bulk_callback ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucan_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ucan_priv *up,
					   struct urb **urbs)
{
	int i;

	FUNC0(urbs, 0, sizeof(*urbs) * UCAN_MAX_RX_URBS);

	for (i = 0; i < UCAN_MAX_RX_URBS; i++) {
		void *buf;

		urbs[i] = FUNC3(0, GFP_KERNEL);
		if (!urbs[i])
			goto err;

		buf = FUNC2(up->udev,
					 up->in_ep_size,
					 GFP_KERNEL, &urbs[i]->transfer_dma);
		if (!buf) {
			/* cleanup this urb */
			FUNC6(urbs[i]);
			urbs[i] = NULL;
			goto err;
		}

		FUNC5(urbs[i], up->udev,
				  FUNC7(up->udev,
						  up->in_ep_addr),
				  buf,
				  up->in_ep_size,
				  ucan_read_bulk_callback,
				  up);

		urbs[i]->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

		FUNC4(urbs[i], &up->rx_urbs);
	}
	return 0;

err:
	/* cleanup other unsubmitted urbs */
	FUNC1(up, urbs);
	return -ENOMEM;
}