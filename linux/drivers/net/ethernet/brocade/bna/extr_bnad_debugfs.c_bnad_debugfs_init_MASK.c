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
struct bnad_debugfs_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  fops; int /*<<< orphan*/  mode; } ;
struct bnad {int /*<<< orphan*/  netdev; int /*<<< orphan*/ * bnad_dentry_files; void* port_debugfs_root; int /*<<< orphan*/  pcidev; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int FUNC0 (struct bnad_debugfs_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bna_debugfs_port_count ; 
 int /*<<< orphan*/ * bna_debugfs_root ; 
 struct bnad_debugfs_entry* bnad_debugfs_files ; 
 void* FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 

void
FUNC8(struct bnad *bnad)
{
	const struct bnad_debugfs_entry *file;
	char name[64];
	int i;

	/* Setup the BNA debugfs root directory*/
	if (!bna_debugfs_root) {
		bna_debugfs_root = FUNC3("bna", NULL);
		FUNC2(&bna_debugfs_port_count, 0);
		if (!bna_debugfs_root) {
			FUNC5(bnad->netdev,
				    "debugfs root dir creation failed\n");
			return;
		}
	}

	/* Setup the pci_dev debugfs directory for the port */
	FUNC7(name, sizeof(name), "pci_dev:%s", FUNC6(bnad->pcidev));
	if (!bnad->port_debugfs_root) {
		bnad->port_debugfs_root =
			FUNC3(name, bna_debugfs_root);
		if (!bnad->port_debugfs_root) {
			FUNC5(bnad->netdev,
				    "debugfs root dir creation failed\n");
			return;
		}

		FUNC1(&bna_debugfs_port_count);

		for (i = 0; i < FUNC0(bnad_debugfs_files); i++) {
			file = &bnad_debugfs_files[i];
			bnad->bnad_dentry_files[i] =
					FUNC4(file->name,
							file->mode,
							bnad->port_debugfs_root,
							bnad,
							file->fops);
			if (!bnad->bnad_dentry_files[i]) {
				FUNC5(bnad->netdev,
					    "create %s entry failed\n",
					    file->name);
				return;
			}
		}
	}
}