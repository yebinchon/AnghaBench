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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct genwqe_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct genwqe_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct genwqe_dev*) ; 
 int FUNC3 (struct genwqe_dev*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pci_dev)
{
	int rc;
	struct genwqe_dev *cd = FUNC1(&pci_dev->dev);

	rc = FUNC3(cd);
	if (!rc) {
		rc = FUNC2(cd);
		if (rc)
			FUNC0(&pci_dev->dev,
				"err: cannot start health checking! (err=%d)\n",
				rc);
	} else {
		FUNC0(&pci_dev->dev,
			"err: cannot start card services! (err=%d)\n", rc);
	}
}