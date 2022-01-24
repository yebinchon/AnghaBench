#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  hb_timer; int /*<<< orphan*/  sem_timer; int /*<<< orphan*/  ioc_timer; } ;
struct TYPE_4__ {TYPE_1__ ioc; } ;
struct bna {TYPE_2__ ioceth; } ;
struct bnad {int /*<<< orphan*/  regdata; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/ * res_info; int /*<<< orphan*/ * mod_res_info; int /*<<< orphan*/  bna_lock; struct bna bna; int /*<<< orphan*/  run_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_RF_NETDEV_REGISTERED ; 
 int /*<<< orphan*/  BNA_MOD_RES_T_MAX ; 
 int /*<<< orphan*/  BNA_RES_T_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct bna*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnad*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC14 (struct net_device*) ; 
 struct net_device* FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 

__attribute__((used)) static void
FUNC20(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC15(pdev);
	struct bnad *bnad;
	struct bna *bna;
	unsigned long flags;

	if (!netdev)
		return;

	bnad = FUNC14(netdev);
	bna = &bnad->bna;

	if (FUNC18(BNAD_RF_NETDEV_REGISTERED, &bnad->run_flags))
		FUNC19(netdev);

	FUNC12(&bnad->conf_mutex);
	FUNC3(bnad);
	FUNC9(&bnad->bna.ioceth.ioc.ioc_timer);
	FUNC9(&bnad->bna.ioceth.ioc.sem_timer);
	FUNC9(&bnad->bna.ioceth.ioc.hb_timer);
	FUNC16(&bnad->bna_lock, flags);
	FUNC0(bna);
	FUNC17(&bnad->bna_lock, flags);

	FUNC7(bnad, &bnad->mod_res_info[0], BNA_MOD_RES_T_MAX);
	FUNC7(bnad, &bnad->res_info[0], BNA_RES_T_MAX);
	FUNC5(bnad);
	FUNC2(bnad);
	FUNC6(pdev);
	FUNC13(&bnad->conf_mutex);
	FUNC4(bnad);
	/* Remove the debugfs node for this bnad */
	FUNC11(bnad->regdata);
	FUNC1(bnad);
	FUNC8(bnad);
	FUNC10(netdev);
}