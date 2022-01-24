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
struct cxl_afu {scalar_t__ num_procs; scalar_t__ current_mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(struct cxl_afu *afu)
{
	FUNC1(&afu->dev, "Deactivating dedicated process mode\n");

	afu->current_mode = 0;
	afu->num_procs = 0;

	FUNC0(afu);

	return 0;
}