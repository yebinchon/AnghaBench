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
typedef  int /*<<< orphan*/  uuid_le ;
struct mei_fixup {int /*<<< orphan*/  (* hook ) (struct mei_cl_device*) ;int /*<<< orphan*/  uuid; } ;
struct mei_cl_device {int /*<<< orphan*/  me_cl; } ;

/* Variables and functions */
 size_t FUNC0 (struct mei_fixup*) ; 
 int /*<<< orphan*/  const MEI_UUID_ANY ; 
 struct mei_fixup* mei_fixups ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_cl_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

void FUNC4(struct mei_cl_device *cldev)
{
	struct mei_fixup *f;
	const uuid_le *uuid = FUNC1(cldev->me_cl);
	size_t i;

	for (i = 0; i < FUNC0(mei_fixups); i++) {

		f = &mei_fixups[i];
		if (FUNC3(f->uuid, MEI_UUID_ANY) == 0 ||
		    FUNC3(f->uuid, *uuid) == 0)
			f->hook(cldev);
	}
}