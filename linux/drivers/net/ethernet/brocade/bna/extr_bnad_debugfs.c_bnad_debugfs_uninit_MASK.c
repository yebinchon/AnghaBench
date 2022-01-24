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
struct bnad {int /*<<< orphan*/ * port_debugfs_root; int /*<<< orphan*/ ** bnad_dentry_files; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bna_debugfs_port_count ; 
 int /*<<< orphan*/ * bna_debugfs_root ; 
 int /*<<< orphan*/  bnad_debugfs_files ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct bnad *bnad)
{
	int i;

	for (i = 0; i < FUNC0(bnad_debugfs_files); i++) {
		if (bnad->bnad_dentry_files[i]) {
			FUNC3(bnad->bnad_dentry_files[i]);
			bnad->bnad_dentry_files[i] = NULL;
		}
	}

	/* Remove the pci_dev debugfs directory for the port */
	if (bnad->port_debugfs_root) {
		FUNC3(bnad->port_debugfs_root);
		bnad->port_debugfs_root = NULL;
		FUNC1(&bna_debugfs_port_count);
	}

	/* Remove the BNA debugfs root directory */
	if (FUNC2(&bna_debugfs_port_count) == 0) {
		FUNC3(bna_debugfs_root);
		bna_debugfs_root = NULL;
	}
}