#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sh_eth_private {TYPE_1__* cd; } ;
struct TYPE_2__ {int /*<<< orphan*/  dual_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSU_BSYSL0 ; 
 int /*<<< orphan*/  TSU_BSYSL1 ; 
 int /*<<< orphan*/  TSU_FCM ; 
 int /*<<< orphan*/  TSU_FWEN0 ; 
 int /*<<< orphan*/  TSU_FWEN1 ; 
 int /*<<< orphan*/  TSU_FWINMK ; 
 int /*<<< orphan*/  TSU_FWSL0 ; 
 int /*<<< orphan*/  TSU_FWSL1 ; 
 int /*<<< orphan*/  TSU_FWSLC ; 
 int TSU_FWSLC_POSTENL ; 
 int TSU_FWSLC_POSTENU ; 
 int /*<<< orphan*/  TSU_FWSR ; 
 int /*<<< orphan*/  TSU_POST1 ; 
 int /*<<< orphan*/  TSU_POST2 ; 
 int /*<<< orphan*/  TSU_POST3 ; 
 int /*<<< orphan*/  TSU_POST4 ; 
 int /*<<< orphan*/  TSU_PRISL0 ; 
 int /*<<< orphan*/  TSU_PRISL1 ; 
 int /*<<< orphan*/  TSU_QTAGM0 ; 
 int /*<<< orphan*/  TSU_QTAGM1 ; 
 int /*<<< orphan*/  TSU_TEN ; 
 int /*<<< orphan*/  FUNC0 (struct sh_eth_private*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct sh_eth_private *mdp)
{
	if (!mdp->cd->dual_port) {
		FUNC0(mdp, 0, TSU_TEN); /* Disable all CAM entry */
		FUNC0(mdp, TSU_FWSLC_POSTENU | TSU_FWSLC_POSTENL,
				 TSU_FWSLC);	/* Enable POST registers */
		return;
	}

	FUNC0(mdp, 0, TSU_FWEN0);	/* Disable forward(0->1) */
	FUNC0(mdp, 0, TSU_FWEN1);	/* Disable forward(1->0) */
	FUNC0(mdp, 0, TSU_FCM);	/* forward fifo 3k-3k */
	FUNC0(mdp, 0xc, TSU_BSYSL0);
	FUNC0(mdp, 0xc, TSU_BSYSL1);
	FUNC0(mdp, 0, TSU_PRISL0);
	FUNC0(mdp, 0, TSU_PRISL1);
	FUNC0(mdp, 0, TSU_FWSL0);
	FUNC0(mdp, 0, TSU_FWSL1);
	FUNC0(mdp, TSU_FWSLC_POSTENU | TSU_FWSLC_POSTENL, TSU_FWSLC);
	FUNC0(mdp, 0, TSU_QTAGM0);	/* Disable QTAG(0->1) */
	FUNC0(mdp, 0, TSU_QTAGM1);	/* Disable QTAG(1->0) */
	FUNC0(mdp, 0, TSU_FWSR);	/* all interrupt status clear */
	FUNC0(mdp, 0, TSU_FWINMK);	/* Disable all interrupt */
	FUNC0(mdp, 0, TSU_TEN);	/* Disable all CAM entry */
	FUNC0(mdp, 0, TSU_POST1);	/* Disable CAM entry [ 0- 7] */
	FUNC0(mdp, 0, TSU_POST2);	/* Disable CAM entry [ 8-15] */
	FUNC0(mdp, 0, TSU_POST3);	/* Disable CAM entry [16-23] */
	FUNC0(mdp, 0, TSU_POST4);	/* Disable CAM entry [24-31] */
}