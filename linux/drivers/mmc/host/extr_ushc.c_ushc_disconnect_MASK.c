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
struct ushc_data {int /*<<< orphan*/  mmc; int /*<<< orphan*/  csw_urb; int /*<<< orphan*/  data_urb; int /*<<< orphan*/  cbw_urb; int /*<<< orphan*/  int_urb; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ushc_data* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ushc_data*) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct ushc_data *ushc = FUNC4(intf);

	FUNC2(&ushc->lock);
	FUNC1(DISCONNECTED, &ushc->flags);
	FUNC3(&ushc->lock);

	FUNC5(ushc->int_urb);
	FUNC5(ushc->cbw_urb);
	FUNC5(ushc->data_urb);
	FUNC5(ushc->csw_urb);

	FUNC0(ushc->mmc);

	FUNC6(ushc);
}