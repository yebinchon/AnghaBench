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
struct usb_interface {int dummy; } ;
struct iguanair {int /*<<< orphan*/  dma_out; int /*<<< orphan*/  packet; int /*<<< orphan*/  udev; int /*<<< orphan*/  dma_in; int /*<<< orphan*/  buf_in; int /*<<< orphan*/  urb_out; int /*<<< orphan*/  urb_in; int /*<<< orphan*/  rc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_IN_PACKET ; 
 int /*<<< orphan*/  MAX_OUT_PACKET ; 
 int /*<<< orphan*/  FUNC0 (struct iguanair*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct iguanair* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct iguanair *ir = FUNC4(intf);

	FUNC1(ir->rc);
	FUNC6(intf, NULL);
	FUNC5(ir->urb_in);
	FUNC5(ir->urb_out);
	FUNC3(ir->urb_in);
	FUNC3(ir->urb_out);
	FUNC2(ir->udev, MAX_IN_PACKET, ir->buf_in, ir->dma_in);
	FUNC2(ir->udev, MAX_OUT_PACKET, ir->packet, ir->dma_out);
	FUNC0(ir);
}