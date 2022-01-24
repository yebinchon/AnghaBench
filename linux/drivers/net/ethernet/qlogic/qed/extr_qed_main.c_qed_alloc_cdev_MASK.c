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
struct qed_dev {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct qed_dev* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*) ; 

__attribute__((used)) static struct qed_dev *FUNC2(struct pci_dev *pdev)
{
	struct qed_dev *cdev;

	cdev = FUNC0(sizeof(*cdev), GFP_KERNEL);
	if (!cdev)
		return cdev;

	FUNC1(cdev);

	return cdev;
}