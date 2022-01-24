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
struct urb {int dummy; } ;
struct TYPE_2__ {int num_urb; struct urb** urb; } ;
struct em28xx {TYPE_1__ adev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 

__attribute__((used)) static int FUNC4(struct em28xx *dev)
{
	int i;

	FUNC0("Stopping isoc\n");
	for (i = 0; i < dev->adev.num_urb; i++) {
		struct urb *urb = dev->adev.urb[i];

		if (!FUNC1())
			FUNC2(urb);
		else
			FUNC3(urb);
	}

	return 0;
}