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
struct siena_vf {int /*<<< orphan*/  rxq_retry_count; int /*<<< orphan*/  rxq_count; int /*<<< orphan*/  txq_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static bool FUNC2(struct siena_vf *vf)
{
	/* Ensure that all updates are visible to efx_vfdi_fini_all_queues() */
	FUNC1();

	return (!vf->txq_count && !vf->rxq_count) ||
		FUNC0(&vf->rxq_retry_count);
}