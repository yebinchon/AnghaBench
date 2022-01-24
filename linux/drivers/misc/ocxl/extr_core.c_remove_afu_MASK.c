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
struct ocxl_afu {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocxl_afu*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocxl_afu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ocxl_afu*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocxl_afu*) ; 

__attribute__((used)) static void FUNC5(struct ocxl_afu *afu)
{
	FUNC2(&afu->list);
	FUNC4(afu);
	FUNC0(afu);
	FUNC1(afu);
	FUNC3(afu); // matches the implicit get in alloc_afu
}