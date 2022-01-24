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
typedef  size_t u8 ;
struct qlcnic_dcb_param {int /*<<< orphan*/ * app; int /*<<< orphan*/ * hdr_prio_pfc_map; } ;
struct qlcnic_dcb_cee {struct qlcnic_dcb_app* app; } ;
struct qlcnic_dcb_app {int valid; size_t priority; int /*<<< orphan*/  protocol; scalar_t__ selector; } ;
struct qlcnic_adapter {TYPE_1__* netdev; } ;
struct dcb_app {size_t priority; int /*<<< orphan*/  protocol; scalar_t__ selector; } ;
struct TYPE_2__ {scalar_t__ dcbnl_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t QLC_DCB_MAX_TC ; 
 size_t QLC_DCB_OPER_IDX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct dcb_app*) ; 
 size_t FUNC3 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (size_t) ; 

__attribute__((used)) static void
FUNC6(struct qlcnic_adapter *adapter, u8 idx,
			       struct qlcnic_dcb_param *each,
			       struct qlcnic_dcb_cee *type)
{
	struct qlcnic_dcb_app *app;
	u8 i, num_app, map, cnt;
	struct dcb_app new_app;

	num_app = FUNC3(adapter, each->hdr_prio_pfc_map[0]);
	for (i = 0; i < num_app; i++) {
		app = &type->app[i];
		app->valid = true;

		/* Only for CEE (-1) */
		app->selector = FUNC1(each->app[i]) - 1;
		new_app.selector = app->selector;
		app->protocol = FUNC0(each->app[i]);
		new_app.protocol = app->protocol;
		map = FUNC4(adapter, each->app[i]);
		cnt = FUNC5(map);

		if (cnt >= QLC_DCB_MAX_TC)
			cnt = 0;

		app->priority = cnt;
		new_app.priority = cnt;

		if (idx == QLC_DCB_OPER_IDX && adapter->netdev->dcbnl_ops)
			FUNC2(adapter->netdev, &new_app);
	}
}