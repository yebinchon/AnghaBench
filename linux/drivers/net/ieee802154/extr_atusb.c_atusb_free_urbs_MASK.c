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
struct urb {int /*<<< orphan*/  context; } ;
struct atusb {int /*<<< orphan*/  idle_urbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 struct urb* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct atusb *atusb)
{
	struct urb *urb;

	while (1) {
		urb = FUNC2(&atusb->idle_urbs);
		if (!urb)
			break;
		FUNC0(urb->context);
		FUNC1(urb);
	}
}