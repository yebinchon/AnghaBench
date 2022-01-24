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
struct cxl {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct cxl *adapter)
{
	FUNC5("cxl_remove_adapter\n");

	FUNC3(adapter);
	FUNC1(adapter);

	/*
	 * Flush adapter datacache as its about to be removed.
	 */
	FUNC0(adapter);

	FUNC2(adapter);

	FUNC4(&adapter->dev);
}