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
struct mvpp2 {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MVPP22_CLS_C2_N_ENTRIES ; 
 int MVPP2_CLS_FLOWS_TBL_SIZE ; 
 struct dentry* FUNC0 (char*,struct dentry*) ; 
 int FUNC1 (struct dentry*,struct mvpp2*,int) ; 
 int FUNC2 (struct dentry*,struct mvpp2*,int) ; 

__attribute__((used)) static int FUNC3(struct dentry *parent, struct mvpp2 *priv)
{
	struct dentry *cls_dir, *c2_dir, *flow_tbl_dir;
	int i, ret;

	cls_dir = FUNC0("classifier", parent);
	if (!cls_dir)
		return -ENOMEM;

	c2_dir = FUNC0("c2", cls_dir);
	if (!c2_dir)
		return -ENOMEM;

	for (i = 0; i < MVPP22_CLS_C2_N_ENTRIES; i++) {
		ret = FUNC1(c2_dir, priv, i);
		if (ret)
			return ret;
	}

	flow_tbl_dir = FUNC0("flow_table", cls_dir);
	if (!flow_tbl_dir)
		return -ENOMEM;

	for (i = 0; i < MVPP2_CLS_FLOWS_TBL_SIZE; i++) {
		ret = FUNC2(flow_tbl_dir, priv, i);
		if (ret)
			return ret;
	}

	return 0;
}