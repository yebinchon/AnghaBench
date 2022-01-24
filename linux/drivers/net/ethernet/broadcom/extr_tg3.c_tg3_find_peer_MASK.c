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
struct tg3 {struct pci_dev* pdev; } ;
struct pci_dev {int devfn; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static struct pci_dev *FUNC2(struct tg3 *tp)
{
	struct pci_dev *peer;
	unsigned int func, devnr = tp->pdev->devfn & ~7;

	for (func = 0; func < 8; func++) {
		peer = FUNC1(tp->pdev->bus, devnr | func);
		if (peer && peer != tp->pdev)
			break;
		FUNC0(peer);
	}
	/* 5704 can be configured in single-port mode, set peer to
	 * tp->pdev in that case.
	 */
	if (!peer) {
		peer = tp->pdev;
		return peer;
	}

	/*
	 * We don't need to keep the refcount elevated; there's no way
	 * to remove one half of this device without removing the other
	 */
	FUNC0(peer);

	return peer;
}