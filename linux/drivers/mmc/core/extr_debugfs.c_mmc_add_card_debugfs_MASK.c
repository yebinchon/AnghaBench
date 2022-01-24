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
struct mmc_host {int /*<<< orphan*/  debugfs_root; } ;
struct mmc_card {int /*<<< orphan*/  state; struct dentry* debugfs_root; struct mmc_host* host; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_IRUSR ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_card*) ; 

void FUNC3(struct mmc_card *card)
{
	struct mmc_host	*host = card->host;
	struct dentry	*root;

	if (!host->debugfs_root)
		return;

	root = FUNC0(FUNC2(card), host->debugfs_root);
	card->debugfs_root = root;

	FUNC1("state", S_IRUSR, root, &card->state);
}