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
struct nfp_net {int id; int /*<<< orphan*/ * r_vecs; int /*<<< orphan*/  max_r_vecs; int /*<<< orphan*/  max_tx_rings; int /*<<< orphan*/  max_rx_rings; struct dentry* debugfs_dir; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfp_dir ; 
 scalar_t__ FUNC4 (struct nfp_net*) ; 
 int /*<<< orphan*/  nfp_rx_q_fops ; 
 int /*<<< orphan*/  nfp_tx_q_fops ; 
 int /*<<< orphan*/  nfp_xdp_q_fops ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

void FUNC7(struct nfp_net *nn, struct dentry *ddir)
{
	struct dentry *queues, *tx, *rx, *xdp;
	char name[20];
	int i;

	if (FUNC0(nfp_dir))
		return;

	if (FUNC4(nn))
		FUNC5(name, "vnic%d", nn->id);
	else
		FUNC6(name, "ctrl-vnic");
	nn->debugfs_dir = FUNC1(name, ddir);

	/* Create queue debugging sub-tree */
	queues = FUNC1("queue", nn->debugfs_dir);

	rx = FUNC1("rx", queues);
	tx = FUNC1("tx", queues);
	xdp = FUNC1("xdp", queues);

	for (i = 0; i < FUNC3(nn->max_rx_rings, nn->max_r_vecs); i++) {
		FUNC5(name, "%d", i);
		FUNC2(name, 0400, rx,
				    &nn->r_vecs[i], &nfp_rx_q_fops);
		FUNC2(name, 0400, xdp,
				    &nn->r_vecs[i], &nfp_xdp_q_fops);
	}

	for (i = 0; i < FUNC3(nn->max_tx_rings, nn->max_r_vecs); i++) {
		FUNC5(name, "%d", i);
		FUNC2(name, 0400, tx,
				    &nn->r_vecs[i], &nfp_tx_q_fops);
	}
}