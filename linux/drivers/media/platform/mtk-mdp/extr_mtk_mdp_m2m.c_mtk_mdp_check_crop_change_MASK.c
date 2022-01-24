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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC1(u32 new_w, u32 new_h, u32 *w, u32 *h)
{
	if (new_w != *w || new_h != *h) {
		FUNC0(1, "size change:%dx%d to %dx%d",
			    *w, *h, new_w, new_h);

		*w = new_w;
		*h = new_h;
	}
}