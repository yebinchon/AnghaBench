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
struct mvpp2_dbgfs_prs_entry {int tid; struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* dbgfs_entries; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct mvpp2_dbgfs_prs_entry* prs_entries; } ;

/* Variables and functions */
 int EINVAL ; 
 int MVPP2_PRS_TCAM_SRAM_SIZE ; 
 struct dentry* FUNC0 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct mvpp2_dbgfs_prs_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mvpp2_dbgfs_prs_ai_fops ; 
 int /*<<< orphan*/  mvpp2_dbgfs_prs_hdata_fops ; 
 int /*<<< orphan*/  mvpp2_dbgfs_prs_hits_fops ; 
 int /*<<< orphan*/  mvpp2_dbgfs_prs_lu_fops ; 
 int /*<<< orphan*/  mvpp2_dbgfs_prs_pmap_fops ; 
 int /*<<< orphan*/  mvpp2_dbgfs_prs_sram_fops ; 
 int /*<<< orphan*/  mvpp2_dbgfs_prs_valid_fops ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct dentry *parent,
				      struct mvpp2 *priv, int tid)
{
	struct mvpp2_dbgfs_prs_entry *entry;
	struct dentry *prs_entry_dir;
	char prs_entry_name[10];

	if (tid >= MVPP2_PRS_TCAM_SRAM_SIZE)
		return -EINVAL;

	FUNC2(prs_entry_name, "%03d", tid);

	prs_entry_dir = FUNC0(prs_entry_name, parent);

	entry = &priv->dbgfs_entries->prs_entries[tid];

	entry->tid = tid;
	entry->priv = priv;

	/* Create each attr */
	FUNC1("sram", 0444, prs_entry_dir, entry,
			    &mvpp2_dbgfs_prs_sram_fops);

	FUNC1("valid", 0644, prs_entry_dir, entry,
			    &mvpp2_dbgfs_prs_valid_fops);

	FUNC1("lookup_id", 0644, prs_entry_dir, entry,
			    &mvpp2_dbgfs_prs_lu_fops);

	FUNC1("ai", 0644, prs_entry_dir, entry,
			    &mvpp2_dbgfs_prs_ai_fops);

	FUNC1("header_data", 0644, prs_entry_dir, entry,
			    &mvpp2_dbgfs_prs_hdata_fops);

	FUNC1("hits", 0444, prs_entry_dir, entry,
			    &mvpp2_dbgfs_prs_hits_fops);

	FUNC1("pmap", 0444, prs_entry_dir, entry,
			     &mvpp2_dbgfs_prs_pmap_fops);

	return 0;
}