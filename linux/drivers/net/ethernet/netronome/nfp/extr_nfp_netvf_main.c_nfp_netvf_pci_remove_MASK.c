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
struct pci_dev {int dummy; } ;
struct nfp_net_vf {int /*<<< orphan*/  q_bar; int /*<<< orphan*/  ddir; struct nfp_net* nn; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl_bar; } ;
struct nfp_net {TYPE_1__ dp; int /*<<< orphan*/  tx_bar; int /*<<< orphan*/  rx_bar; int /*<<< orphan*/  debugfs_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net_vf*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct nfp_net_vf* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev)
{
	struct nfp_net_vf *vf;
	struct nfp_net *nn;

	vf = FUNC7(pdev);
	if (!vf)
		return;

	nn = vf->nn;

	/* Note, the order is slightly different from above as we need
	 * to keep the nn pointer around till we have freed everything.
	 */
	FUNC3(&nn->debugfs_dir);
	FUNC3(&vf->ddir);

	FUNC2(nn);

	FUNC5(pdev);

	if (!vf->q_bar) {
		FUNC0(nn->rx_bar);
		FUNC0(nn->tx_bar);
	} else {
		FUNC0(vf->q_bar);
	}
	FUNC0(nn->dp.ctrl_bar);

	FUNC4(nn);

	FUNC8(pdev);
	FUNC6(pdev);

	FUNC9(pdev, NULL);
	FUNC1(vf);
}