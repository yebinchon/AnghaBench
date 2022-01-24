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
struct TYPE_2__ {int /*<<< orphan*/  global_mmio_bar; int /*<<< orphan*/  pp_mmio_bar; } ;
struct ocxl_afu {TYPE_1__ config; int /*<<< orphan*/  fn; scalar_t__ pp_mmio_start; scalar_t__ global_mmio_start; int /*<<< orphan*/ * global_mmio_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ocxl_afu *afu)
{
	if (afu->global_mmio_ptr) {
		FUNC0(afu->global_mmio_ptr);
		afu->global_mmio_ptr = NULL;
	}
	afu->global_mmio_start = 0;
	afu->pp_mmio_start = 0;
	FUNC1(afu->fn, afu->config.pp_mmio_bar);
	FUNC1(afu->fn, afu->config.global_mmio_bar);
}