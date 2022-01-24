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
typedef  int /*<<< orphan*/  umode_t ;
struct device {int /*<<< orphan*/  devt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC4(struct device *dev, umode_t *mode)
{
	if (FUNC1(CPU_FTR_HVMODE) &&
	    FUNC0(dev->devt)) {
		/*
		 * These minor numbers will eventually be used to program the
		 * PSL and AFUs once we have dynamic reprogramming support
		 */
		return NULL;
	}
	return FUNC3(GFP_KERNEL, "cxl/%s", FUNC2(dev));
}