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

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/ * ee1004_set_page ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void)
{
	int err;

	err = FUNC0(ee1004_set_page[0]);
	if (err == -ENXIO) {
		/* Nack means page 1 is selected */
		return 1;
	}
	if (err < 0) {
		/* Anything else is a real error, bail out */
		return err;
	}

	/* Ack means page 0 is selected, returned value meaningless */
	return 0;
}