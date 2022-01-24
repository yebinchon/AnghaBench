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
struct timer_list {int dummy; } ;
struct efx_mcdi_iface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  async_timer ; 
 int /*<<< orphan*/  FUNC0 (struct efx_mcdi_iface*,int) ; 
 struct efx_mcdi_iface* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct efx_mcdi_iface* mcdi ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct efx_mcdi_iface *mcdi = FUNC1(mcdi, t, async_timer);

	FUNC0(mcdi, true);
}