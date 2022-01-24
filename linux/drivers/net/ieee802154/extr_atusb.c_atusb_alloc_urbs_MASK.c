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
struct urb {int dummy; } ;
struct atusb {int /*<<< orphan*/  idle_urbs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct atusb*) ; 
 struct urb* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct atusb *atusb, int n)
{
	struct urb *urb;

	while (n) {
		urb = FUNC1(0, GFP_KERNEL);
		if (!urb) {
			FUNC0(atusb);
			return -ENOMEM;
		}
		FUNC2(urb, &atusb->idle_urbs);
		n--;
	}
	return 0;
}