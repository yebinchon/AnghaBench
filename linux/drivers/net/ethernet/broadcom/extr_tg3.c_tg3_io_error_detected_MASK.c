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
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  RESET_KIND_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct tg3* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ pci_channel_io_frozen ; 
 scalar_t__ pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC11 (struct tg3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC13 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC14 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC15 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC16 (struct tg3*) ; 

__attribute__((used)) static pci_ers_result_t FUNC17(struct pci_dev *pdev,
					      pci_channel_state_t state)
{
	struct net_device *netdev = FUNC6(pdev);
	struct tg3 *tp = FUNC2(netdev);
	pci_ers_result_t err = PCI_ERS_RESULT_NEED_RESET;

	FUNC1(netdev, "PCI I/O error detected\n");

	FUNC7();

	/* We probably don't have netdev yet */
	if (!netdev || !FUNC4(netdev))
		goto done;

	/* We needn't recover from permanent error */
	if (state == pci_channel_io_frozen)
		tp->pcierr_recovery = true;

	FUNC14(tp);

	FUNC13(tp);

	FUNC16(tp);

	/* Want to make sure that the reset task doesn't run */
	FUNC15(tp);

	FUNC3(netdev);

	/* Clean up software state, even if MMIO is blocked */
	FUNC9(tp, 0);
	FUNC11(tp, RESET_KIND_SHUTDOWN, 0);
	FUNC10(tp);

done:
	if (state == pci_channel_io_perm_failure) {
		if (netdev) {
			FUNC12(tp);
			FUNC0(netdev);
		}
		err = PCI_ERS_RESULT_DISCONNECT;
	} else {
		FUNC5(pdev);
	}

	FUNC8();

	return err;
}