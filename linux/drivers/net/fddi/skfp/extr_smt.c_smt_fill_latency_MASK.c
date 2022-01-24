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
struct smt_p_latency {int lt_latency1; int lt_latency2; void* lt_phyout_idx2; void* lt_phyout_idx1; } ;
struct TYPE_2__ {scalar_t__ sas; } ;
struct s_smc {TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smt_p_latency*,int /*<<< orphan*/ ) ; 
 scalar_t__ SMT_DAS ; 
 int /*<<< orphan*/  SMT_P_LATENCY ; 
 void* FUNC1 (struct s_smc*,int) ; 

__attribute__((used)) static void FUNC2(struct s_smc *smc, struct smt_p_latency *latency)
{
	FUNC0(latency,SMT_P_LATENCY) ;

	latency->lt_phyout_idx1 = FUNC1(smc,0) ;
	latency->lt_latency1 = 10 ;	/* in octets (byte clock) */
	/*
	 * note: latency has two phy entries by definition
	 * for a SAS, the 2nd one is null
	 */
	if (smc->s.sas == SMT_DAS) {
		latency->lt_phyout_idx2 = FUNC1(smc,1) ;
		latency->lt_latency2 = 10 ;	/* in octets (byte clock) */
	}
	else {
		latency->lt_phyout_idx2 = 0 ;
		latency->lt_latency2 = 0 ;
	}
}