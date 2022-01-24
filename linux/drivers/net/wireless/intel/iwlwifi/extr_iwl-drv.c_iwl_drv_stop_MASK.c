#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iwl_drv {TYPE_2__* trans; int /*<<< orphan*/  dbgfs_drv; int /*<<< orphan*/  list; int /*<<< orphan*/  request_firmware_complete; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* debugfs_cleanup ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_drv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_drv*) ; 
 int /*<<< orphan*/  iwlwifi_opmode_table_mtx ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_drv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct iwl_drv *drv)
{
	FUNC10(&drv->request_firmware_complete);

	FUNC0(drv);

	FUNC3(drv);

	FUNC7(&iwlwifi_opmode_table_mtx);
	/*
	 * List is empty (this item wasn't added)
	 * when firmware loading failed -- in that
	 * case we can't remove it from any list.
	 */
	if (!FUNC6(&drv->list))
		FUNC5(&drv->list);
	FUNC8(&iwlwifi_opmode_table_mtx);

#ifdef CONFIG_IWLWIFI_DEBUGFS
	drv->trans->ops->debugfs_cleanup(drv->trans);

	debugfs_remove_recursive(drv->dbgfs_drv);
#endif

	FUNC2(drv->trans);

	FUNC4(drv);
}