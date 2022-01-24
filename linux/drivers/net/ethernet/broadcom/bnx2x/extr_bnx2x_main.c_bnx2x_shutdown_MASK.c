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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,struct net_device*,struct bnx2x*,int) ; 
 struct bnx2x* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC3(pdev);
	struct bnx2x *bp;

	if (!dev)
		return;

	bp = FUNC1(dev);
	if (!bp)
		return;

	FUNC4();
	FUNC2(dev);
	FUNC5();

	/* Don't remove the netdevice, as there are scenarios which will cause
	 * the kernel to hang, e.g., when trying to remove bnx2i while the
	 * rootfs is mounted from SAN.
	 */
	FUNC0(pdev, dev, bp, false);
}