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
struct iwl_trans {void* dbgfs_dir; int /*<<< orphan*/  dev; } ;
struct iwl_drv {struct iwl_trans* trans; void* dbgfs_drv; int /*<<< orphan*/  list; int /*<<< orphan*/  request_firmware_complete; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct iwl_drv* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*) ; 
 void* FUNC3 (char*,void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct iwl_trans*) ; 
 void* iwl_dbgfs_root ; 
 int FUNC9 (struct iwl_drv*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_drv*) ; 
 struct iwl_drv* FUNC11 (int,int /*<<< orphan*/ ) ; 

struct iwl_drv *FUNC12(struct iwl_trans *trans)
{
	struct iwl_drv *drv;
	int ret;

	drv = FUNC11(sizeof(*drv), GFP_KERNEL);
	if (!drv) {
		ret = -ENOMEM;
		goto err;
	}

	drv->trans = trans;
	drv->dev = trans->dev;

	FUNC6(&drv->request_firmware_complete);
	FUNC1(&drv->list);

	FUNC8(drv->trans->dev, drv->trans);

#ifdef CONFIG_IWLWIFI_DEBUGFS
	/* Create the device debugfs entries. */
	drv->dbgfs_drv = debugfs_create_dir(dev_name(trans->dev),
					    iwl_dbgfs_root);

	/* Create transport layer debugfs dir */
	drv->trans->dbgfs_dir = debugfs_create_dir("trans", drv->dbgfs_drv);
#endif

	ret = FUNC9(drv, true);
	if (ret) {
		FUNC2(trans, "Couldn't request the fw\n");
		goto err_fw;
	}

	return drv;

err_fw:
#ifdef CONFIG_IWLWIFI_DEBUGFS
	debugfs_remove_recursive(drv->dbgfs_drv);
	iwl_dbg_tlv_free(drv->trans);
#endif
	FUNC10(drv);
err:
	return FUNC0(ret);
}