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
struct sta2x11_mfd {int /*<<< orphan*/  list; struct sta2x11_instance* instance; int /*<<< orphan*/ * lock; } ;
struct sta2x11_instance {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sta2x11_mfd* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sta2x11_instance* FUNC5 (struct pci_dev*) ; 
 struct sta2x11_mfd* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  sta2x11_mfd_list ; 

__attribute__((used)) static int FUNC7(struct pci_dev *pdev, gfp_t flags)
{
	int i;
	struct sta2x11_mfd *mfd = FUNC6(pdev);
	struct sta2x11_instance *instance;

	if (mfd)
		return -EBUSY;
	instance = FUNC5(pdev);
	if (!instance)
		return -EINVAL;
	mfd = FUNC2(sizeof(*mfd), flags);
	if (!mfd)
		return -ENOMEM;
	FUNC1(&mfd->list);
	for (i = 0; i < FUNC0(mfd->lock); i++)
		FUNC4(&mfd->lock[i]);
	mfd->instance = instance;
	FUNC3(&mfd->list, &sta2x11_mfd_list);
	return 0;
}