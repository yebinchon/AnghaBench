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
struct efx_nic {scalar_t__ state; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  reset_pending; } ;

/* Variables and functions */
 scalar_t__ STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct efx_nic *efx)
{
	if ((efx->state != STATE_DISABLED) && !efx->reset_pending)
		FUNC0(efx->net_dev);
}