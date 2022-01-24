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
typedef  int /*<<< orphan*/  u16 ;
struct efx_nic {int /*<<< orphan*/  net_dev; int /*<<< orphan*/  filter_sem; struct efx_ef10_filter_table* filter_state; } ;
struct efx_ef10_filter_vlan {int /*<<< orphan*/  list; void** default_filters; void** mc; void** uc; int /*<<< orphan*/  vid; } ;
struct efx_ef10_filter_table {int /*<<< orphan*/  vlan_list; } ;

/* Variables and functions */
 unsigned int FUNC0 (void**) ; 
 int EALREADY ; 
 void* EFX_EF10_FILTER_ID_INVALID ; 
 unsigned int EFX_EF10_NUM_DEFAULT_FILTERS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct efx_ef10_filter_vlan*) ; 
 int /*<<< orphan*/  drv ; 
 scalar_t__ FUNC2 (struct efx_nic*) ; 
 struct efx_ef10_filter_vlan* FUNC3 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,struct efx_ef10_filter_vlan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct efx_ef10_filter_vlan* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct efx_nic *efx, u16 vid)
{
	struct efx_ef10_filter_table *table = efx->filter_state;
	struct efx_ef10_filter_vlan *vlan;
	unsigned int i;

	if (!FUNC5(&efx->filter_sem))
		return -EINVAL;

	vlan = FUNC3(efx, vid);
	if (FUNC1(vlan)) {
		FUNC8(efx, drv, efx->net_dev,
			  "VLAN %u already added\n", vid);
		return -EALREADY;
	}

	vlan = FUNC6(sizeof(*vlan), GFP_KERNEL);
	if (!vlan)
		return -ENOMEM;

	vlan->vid = vid;

	for (i = 0; i < FUNC0(vlan->uc); i++)
		vlan->uc[i] = EFX_EF10_FILTER_ID_INVALID;
	for (i = 0; i < FUNC0(vlan->mc); i++)
		vlan->mc[i] = EFX_EF10_FILTER_ID_INVALID;
	for (i = 0; i < EFX_EF10_NUM_DEFAULT_FILTERS; i++)
		vlan->default_filters[i] = EFX_EF10_FILTER_ID_INVALID;

	FUNC7(&vlan->list, &table->vlan_list);

	if (FUNC2(efx))
		FUNC4(efx, vlan);

	return 0;
}