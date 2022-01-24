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
struct smt_p_mac_fnc {int /*<<< orphan*/  nc_counter; int /*<<< orphan*/  nc_index; int /*<<< orphan*/  nc_mib_index; } ;
struct TYPE_4__ {TYPE_1__* m; } ;
struct s_smc {TYPE_2__ mib; } ;
struct TYPE_3__ {int /*<<< orphan*/  fddiMACNotCopied_Ct; } ;

/* Variables and functions */
 int /*<<< orphan*/  INDEX_MAC ; 
 size_t MAC0 ; 
 int /*<<< orphan*/  FUNC0 (struct smt_p_mac_fnc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMT_P_MAC_FNC ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int) ; 

__attribute__((used)) static void FUNC2(struct s_smc *smc, struct smt_p_mac_fnc *fnc)
{
	FUNC0(fnc,SMT_P_MAC_FNC) ;
	fnc->nc_mib_index = INDEX_MAC ;
	fnc->nc_index = FUNC1(smc,1) ;
	fnc->nc_counter = smc->mib.m[MAC0].fddiMACNotCopied_Ct ;
}