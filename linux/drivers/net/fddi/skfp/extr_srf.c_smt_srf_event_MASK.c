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
typedef  int u_long ;
struct s_srf_evc {int* evc_cond_state; int evc_rep_required; void** evc_multiple; } ;
struct TYPE_4__ {void* TSR; int sr_state; int SRThreshold; void* any_report; } ;
struct TYPE_3__ {int /*<<< orphan*/  fddiSMTStatRptPolicy; int /*<<< orphan*/  fddiSMTTransitionTimeStamp; } ;
struct s_smc {TYPE_2__ srf; TYPE_1__ mib; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* FALSE ; 
 int /*<<< orphan*/  RS_DUPADDR ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int /*<<< orphan*/ ) ; 
 int SMT_COND_MAC_DUP_ADDR ; 
 scalar_t__ FUNC2 (int) ; 
#define  SR0_WAIT 130 
#define  SR1_HOLDOFF 129 
#define  SR2_DISABLED 128 
 void* THRESHOLD_2 ; 
 int THRESHOLD_32 ; 
 int TICKS_PER_SECOND ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*) ; 
 struct s_srf_evc* FUNC4 (struct s_smc*,int,int) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC7 (struct s_smc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct s_smc*,struct s_srf_evc*) ; 
 int /*<<< orphan*/ * srf_names ; 

void FUNC9(struct s_smc *smc, int code, int index, int cond)
{
	struct s_srf_evc	*evc ;
	int			cond_asserted = 0 ;
	int			cond_deasserted = 0 ;
	int			event_occurred = 0 ;
	int			tsr ;
	int			T_Limit = 2*TICKS_PER_SECOND ;

	if (code == SMT_COND_MAC_DUP_ADDR && cond) {
		FUNC1(smc,RS_DUPADDR) ;
	}

	if (code) {
		FUNC0("SRF: %s index %d", srf_names[code], index);

		if (!(evc = FUNC4(smc,code,index))) {
			FUNC0("SRF : smt_get_evc() failed");
			return ;
		}
		/*
		 * ignore condition if no change
		 */
		if (FUNC2(code)) {
			if (*evc->evc_cond_state == cond)
				return ;
		}

		/*
		 * set transition time stamp
		 */
		FUNC7(smc,smc->mib.fddiSMTTransitionTimeStamp) ;
		if (FUNC2(code)) {
			FUNC0("SRF: condition is %s", cond ? "ON" : "OFF");
			if (cond) {
				*evc->evc_cond_state = TRUE ;
				evc->evc_rep_required = TRUE ;
				smc->srf.any_report = TRUE ;
				cond_asserted = TRUE ;
			}
			else {
				*evc->evc_cond_state = FALSE ;
				cond_deasserted = TRUE ;
			}
		}
		else {
			if (evc->evc_rep_required) {
				*evc->evc_multiple  = TRUE ;
			}
			else {
				evc->evc_rep_required = TRUE ;
				*evc->evc_multiple  = FALSE ;
			}
			smc->srf.any_report = TRUE ;
			event_occurred = TRUE ;
		}
#ifdef	FDDI_MIB
		snmp_srf_event(smc,evc) ;
#endif	/* FDDI_MIB */
	}
	tsr = FUNC5() - smc->srf.TSR ;

	switch (smc->srf.sr_state) {
	case SR0_WAIT :
		/* SR01a */
		if (cond_asserted && tsr < T_Limit) {
			smc->srf.SRThreshold = THRESHOLD_2 ;
			smc->srf.sr_state = SR1_HOLDOFF ;
			break ;
		}
		/* SR01b */
		if (cond_deasserted && tsr < T_Limit) {
			smc->srf.sr_state = SR1_HOLDOFF ;
			break ;
		}
		/* SR01c */
		if (event_occurred && tsr < T_Limit) {
			smc->srf.sr_state = SR1_HOLDOFF ;
			break ;
		}
		/* SR00b */
		if (cond_asserted && tsr >= T_Limit) {
			smc->srf.SRThreshold = THRESHOLD_2 ;
			smc->srf.TSR = FUNC5() ;
			FUNC6(smc) ;
			break ;
		}
		/* SR00c */
		if (cond_deasserted && tsr >= T_Limit) {
			smc->srf.TSR = FUNC5() ;
			FUNC6(smc) ;
			break ;
		}
		/* SR00d */
		if (event_occurred && tsr >= T_Limit) {
			smc->srf.TSR = FUNC5() ;
			FUNC6(smc) ;
			break ;
		}
		/* SR00e */
		if (smc->srf.any_report && (u_long) tsr >=
			smc->srf.SRThreshold) {
			smc->srf.SRThreshold *= 2 ;
			if (smc->srf.SRThreshold > THRESHOLD_32)
				smc->srf.SRThreshold = THRESHOLD_32 ;
			smc->srf.TSR = FUNC5() ;
			FUNC6(smc) ;
			break ;
		}
		/* SR02 */
		if (!smc->mib.fddiSMTStatRptPolicy) {
			smc->srf.sr_state = SR2_DISABLED ;
			break ;
		}
		break ;
	case SR1_HOLDOFF :
		/* SR10b */
		if (tsr >= T_Limit) {
			smc->srf.sr_state = SR0_WAIT ;
			smc->srf.TSR = FUNC5() ;
			FUNC6(smc) ;
			break ;
		}
		/* SR11a */
		if (cond_asserted) {
			smc->srf.SRThreshold = THRESHOLD_2 ;
		}
		/* SR11b */
		/* SR11c */
		/* handled above */
		/* SR12 */
		if (!smc->mib.fddiSMTStatRptPolicy) {
			smc->srf.sr_state = SR2_DISABLED ;
			break ;
		}
		break ;
	case SR2_DISABLED :
		if (smc->mib.fddiSMTStatRptPolicy) {
			smc->srf.sr_state = SR0_WAIT ;
			smc->srf.TSR = FUNC5() ;
			smc->srf.SRThreshold = THRESHOLD_2 ;
			FUNC3(smc) ;
			break ;
		}
		break ;
	}
}