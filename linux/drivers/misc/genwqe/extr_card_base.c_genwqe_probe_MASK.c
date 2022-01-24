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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct genwqe_dev {struct pci_dev* pci_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct genwqe_dev*) ; 
 int FUNC1 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct genwqe_dev*) ; 
 struct genwqe_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct genwqe_dev*) ; 
 int FUNC6 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct genwqe_dev*) ; 
 int FUNC10 (struct genwqe_dev*) ; 
 int FUNC11 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct genwqe_dev*) ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pci_dev,
			const struct pci_device_id *id)
{
	int err;
	struct genwqe_dev *cd;

	FUNC7();

	cd = FUNC4();
	if (FUNC0(cd)) {
		FUNC2(&pci_dev->dev, "err: could not alloc mem (err=%d)!\n",
			(int)FUNC1(cd));
		return FUNC1(cd);
	}

	FUNC3(&pci_dev->dev, cd);
	cd->pci_dev = pci_dev;

	err = FUNC10(cd);
	if (err < 0) {
		FUNC2(&pci_dev->dev,
			"err: problems with PCI setup (err=%d)\n", err);
		goto out_free_dev;
	}

	err = FUNC11(cd);
	if (err < 0) {
		FUNC2(&pci_dev->dev,
			"err: cannot start card services! (err=%d)\n", err);
		goto out_pci_remove;
	}

	if (FUNC8(cd)) {
		err = FUNC6(cd);
		if (err < 0) {
			FUNC2(&pci_dev->dev,
				"err: cannot start health checking! (err=%d)\n",
				err);
			goto out_stop_services;
		}
	}
	return 0;

 out_stop_services:
	FUNC12(cd);
 out_pci_remove:
	FUNC9(cd);
 out_free_dev:
	FUNC5(cd);
	return err;
}