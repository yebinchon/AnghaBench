#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dentry {int dummy; } ;
struct cxl {int adapter_num; TYPE_2__* native; struct dentry* debugfs; } ;
struct TYPE_4__ {TYPE_1__* sl_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* debugfs_add_adapter_regs ) (struct cxl*,struct dentry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_ErrIVTE ; 
 int /*<<< orphan*/  S_IRUSR ; 
 int /*<<< orphan*/  FUNC0 (struct cxl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxl_debugfs ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cxl*,struct dentry*) ; 

void FUNC5(struct cxl *adapter)
{
	struct dentry *dir;
	char buf[32];

	if (!cxl_debugfs)
		return;

	FUNC3(buf, 32, "card%i", adapter->adapter_num);
	dir = FUNC1(buf, cxl_debugfs);
	adapter->debugfs = dir;

	FUNC2("err_ivte", S_IRUSR, dir, FUNC0(adapter, CXL_PSL_ErrIVTE));

	if (adapter->native->sl_ops->debugfs_add_adapter_regs)
		adapter->native->sl_ops->debugfs_add_adapter_regs(adapter, dir);
}