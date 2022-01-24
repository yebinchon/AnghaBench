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
struct ubi_device {int vtbl_slots; } ;

/* Variables and functions */
 int FUNC0 (struct ubi_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_device*) ; 

__attribute__((used)) static int FUNC2(struct ubi_device *ubi)
{
	int i, err = 0;

	if (!FUNC1(ubi))
		return 0;

	for (i = 0; i < ubi->vtbl_slots; i++) {
		err = FUNC0(ubi, i);
		if (err)
			break;
	}

	return err;
}