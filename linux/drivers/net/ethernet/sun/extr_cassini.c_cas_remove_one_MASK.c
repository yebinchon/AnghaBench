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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct cas_init_block {int dummy; } ;
struct cas {int /*<<< orphan*/  regs; int /*<<< orphan*/  block_dvma; int /*<<< orphan*/  init_block; scalar_t__ orig_cacheline_size; int /*<<< orphan*/  pm_mutex; scalar_t__ hw_running; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  fw_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cas*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct cas* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC8(pdev);
	struct cas *cp;
	if (!dev)
		return;

	cp = FUNC5(dev);
	FUNC12(dev);

	FUNC13(cp->fw_data);

	FUNC3(&cp->pm_mutex);
	FUNC0(&cp->reset_task);
	if (cp->hw_running)
		FUNC1(cp);
	FUNC4(&cp->pm_mutex);

#if 1
	if (cp->orig_cacheline_size) {
		/* Restore the cache line size if we had modified
		 * it.
		 */
		FUNC11(pdev, PCI_CACHE_LINE_SIZE,
				      cp->orig_cacheline_size);
	}
#endif
	FUNC7(pdev, sizeof(struct cas_init_block),
			    cp->init_block, cp->block_dvma);
	FUNC9(pdev, cp->regs);
	FUNC2(dev);
	FUNC10(pdev);
	FUNC6(pdev);
}