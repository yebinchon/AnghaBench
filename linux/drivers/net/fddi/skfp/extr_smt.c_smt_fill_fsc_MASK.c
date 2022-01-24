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
struct smt_p_fsc {void* fsc_value; void* fsc_mac_index; scalar_t__ fsc_pad1; scalar_t__ fsc_pad0; } ;
struct s_smc {int dummy; } ;

/* Variables and functions */
 void* FSC_TYPE0 ; 
 void* INDEX_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC1 (struct smt_p_fsc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMT_P_FSC ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(struct s_smc *smc, struct smt_p_fsc *fsc)
{
	FUNC0(smc) ;
	FUNC1(fsc,SMT_P_FSC) ;
	fsc->fsc_pad0 = 0 ;
	fsc->fsc_mac_index = INDEX_MAC ;	/* this is MIB ; MIB is NOT
						 * mac_index ()i !
						 */
	fsc->fsc_pad1 = 0 ;
	fsc->fsc_value = FSC_TYPE0 ;		/* "normal" node */
#ifdef	LITTLE_ENDIAN
	fsc->fsc_mac_index = smt_swap_short(INDEX_MAC) ;
	fsc->fsc_value = smt_swap_short(FSC_TYPE0) ;
#endif
}