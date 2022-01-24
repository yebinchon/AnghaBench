#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int /*<<< orphan*/ * p; } ;
struct s_smc {TYPE_2__ mib; TYPE_1__* y; } ;
struct TYPE_6__ {scalar_t__ d_sba; scalar_t__ d_ess; scalar_t__ d_plc; scalar_t__ d_cfm; scalar_t__ d_pcm; scalar_t__ d_ecm; scalar_t__ d_rmt; scalar_t__ d_smtf; scalar_t__ d_smt; } ;
struct TYPE_4__ {int /*<<< orphan*/ * mib; } ;

/* Variables and functions */
 int NUMPHYS ; 
 int /*<<< orphan*/  FUNC0 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*) ; 
 TYPE_3__ debug ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC5 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC6 (struct s_smc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct s_smc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC9 (struct s_smc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC11 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC12 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC13 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC14 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC15 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC16 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC17 (struct s_smc*) ; 

int FUNC18(struct s_smc *smc, u_char *mac_addr)
/* u_char *mac_addr;	canonical address or NULL */
{
	int	p ;

#if defined(DEBUG) && !defined(DEBUG_BRD)
	debug.d_smt = 0 ;
	debug.d_smtf = 0 ;
	debug.d_rmt = 0 ;
	debug.d_ecm = 0 ;
	debug.d_pcm = 0 ;
	debug.d_cfm = 0 ;

	debug.d_plc = 0 ;
#ifdef	ESS
	debug.d_ess = 0 ;
#endif
#ifdef	SBA
	debug.d_sba = 0 ;
#endif
#endif	/* DEBUG && !DEBUG_BRD */

	/* First initialize the ports mib->pointers */
	for ( p = 0; p < NUMPHYS; p ++ ) {
		smc->y[p].mib = & smc->mib.p[p] ;
	}

	FUNC11(smc) ;	
	(void) FUNC16(smc) ;
	FUNC6(smc,mac_addr) ;	/* HW driver */
	FUNC14(smc) ;		/* update values that depend on s.sas */

	FUNC5(smc) ;			/* event queue */
#ifndef	SLIM_SMT
	FUNC15(smc) ;		/* evcs in MIB */
#endif	/* no SLIM_SMT */
	FUNC17(smc) ;		/* timer package */
	FUNC12(smc) ;		/* SMT frame manager */

	FUNC8(smc) ;			/* PCM state machine */
	FUNC4(smc) ;			/* ECM state machine */
	FUNC2(smc) ;			/* CFM state machine */
	FUNC10(smc) ;			/* RMT state machine */

	for (p = 0 ; p < NUMPHYS ; p++) {
		FUNC7(smc,p,0) ;		/* PCM A state machine */
	}
	FUNC3(smc,0) ;			/* ECM state machine */
	FUNC1(smc,0) ;			/* CFM state machine */
	FUNC9(smc,0) ;			/* RMT state machine */

	FUNC13(smc) ;		/* NIF FSM etc */

        FUNC0(smc) ;                /* PNMI initialization */

	return 0;
}