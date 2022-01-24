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
struct ubi_device {int /*<<< orphan*/  lookuptbl; int /*<<< orphan*/  scrub; int /*<<< orphan*/  free; int /*<<< orphan*/  erroneous; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*) ; 

void FUNC6(struct ubi_device *ubi)
{
	FUNC0("close the WL sub-system");
	FUNC5(ubi);
	FUNC3(ubi);
	FUNC2(ubi);
	FUNC4(ubi, &ubi->used);
	FUNC4(ubi, &ubi->erroneous);
	FUNC4(ubi, &ubi->free);
	FUNC4(ubi, &ubi->scrub);
	FUNC1(ubi->lookuptbl);
}