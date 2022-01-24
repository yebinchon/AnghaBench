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
struct tg3 {int pcierr_recovery; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INIT_COMPLETE ; 
 int /*<<< orphan*/  RESET_KIND_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct tg3* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC11 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC12 (struct tg3*) ; 
 int FUNC13 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct tg3*) ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC4(pdev);
	struct tg3 *tp = FUNC1(netdev);
	int err;

	FUNC5();

	if (!netdev || !FUNC3(netdev))
		goto done;

	FUNC9(tp, 0);
	FUNC7(tp, RESET_KIND_INIT);
	FUNC8(tp, INIT_COMPLETE);
	err = FUNC13(tp, true);
	if (err) {
		FUNC10(tp);
		FUNC0(netdev, "Cannot restart hardware after reset.\n");
		goto done;
	}

	FUNC2(netdev);

	FUNC14(tp);

	FUNC11(tp);

	FUNC10(tp);

	FUNC12(tp);

done:
	tp->pcierr_recovery = false;
	FUNC6();
}