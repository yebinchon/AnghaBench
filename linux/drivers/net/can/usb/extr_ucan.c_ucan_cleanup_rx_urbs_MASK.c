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
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; } ;
struct ucan_priv {int /*<<< orphan*/  in_ep_size; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int UCAN_MAX_RX_URBS ; 
 int /*<<< orphan*/  FUNC0 (struct urb**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 

__attribute__((used)) static void FUNC4(struct ucan_priv *up, struct urb **urbs)
{
	int i;

	for (i = 0; i < UCAN_MAX_RX_URBS; i++) {
		if (urbs[i]) {
			FUNC3(urbs[i]);
			FUNC1(up->udev,
					  up->in_ep_size,
					  urbs[i]->transfer_buffer,
					  urbs[i]->transfer_dma);
			FUNC2(urbs[i]);
		}
	}

	FUNC0(urbs, 0, sizeof(*urbs) * UCAN_MAX_RX_URBS);
}