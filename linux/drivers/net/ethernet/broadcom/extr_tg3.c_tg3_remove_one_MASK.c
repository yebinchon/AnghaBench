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
struct tg3 {int /*<<< orphan*/ * regs; int /*<<< orphan*/ * aperegs; int /*<<< orphan*/  fw; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USE_PHYLIB ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tg3* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC9 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC10 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC11 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static void FUNC13(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC4(pdev);

	if (dev) {
		struct tg3 *tp = FUNC2(dev);

		FUNC10(tp);

		FUNC6(tp->fw);

		FUNC11(tp);

		if (FUNC7(tp, USE_PHYLIB)) {
			FUNC9(tp);
			FUNC8(tp);
		}

		FUNC12(dev);
		if (tp->aperegs) {
			FUNC1(tp->aperegs);
			tp->aperegs = NULL;
		}
		if (tp->regs) {
			FUNC1(tp->regs);
			tp->regs = NULL;
		}
		FUNC0(dev);
		FUNC5(pdev);
		FUNC3(pdev);
	}
}