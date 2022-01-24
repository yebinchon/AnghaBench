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
struct efx_nic {int /*<<< orphan*/  filter_sem; } ;
struct efx_filter_spec {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,struct efx_filter_spec*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32 FUNC3(struct efx_nic *efx,
				  struct efx_filter_spec *spec,
				  bool replace_equal)
{
	s32 ret;

	FUNC0(&efx->filter_sem);
	ret = FUNC1(efx, spec, replace_equal);
	FUNC2(&efx->filter_sem);

	return ret;
}