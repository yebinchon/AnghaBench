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
struct TYPE_2__ {scalar_t__ context_id; } ;
struct efx_nic {TYPE_1__ rss_context; } ;

/* Variables and functions */
 scalar_t__ EFX_EF10_RSS_CONTEXT_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct efx_nic*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct efx_nic *efx)
{
	int rc;

	if (efx->rss_context.context_id != EFX_EF10_RSS_CONTEXT_INVALID) {
		rc = FUNC1(efx, efx->rss_context.context_id);
		FUNC0(rc != 0);
	}
	efx->rss_context.context_id = EFX_EF10_RSS_CONTEXT_INVALID;
}