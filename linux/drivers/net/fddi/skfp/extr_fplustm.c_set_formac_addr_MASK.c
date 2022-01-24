#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int* a; } ;
struct TYPE_11__ {TYPE_4__ group_addr; } ;
struct TYPE_9__ {int* a; } ;
struct TYPE_12__ {TYPE_5__ fp; TYPE_3__ fddi_home_addr; } ;
struct TYPE_8__ {TYPE_1__* m; } ;
struct s_smc {TYPE_6__ hw; TYPE_2__ mib; } ;
struct TYPE_7__ {long fddiMACT_Req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_LAGC ; 
 int /*<<< orphan*/  FM_LAGL ; 
 int /*<<< orphan*/  FM_LAGM ; 
 int /*<<< orphan*/  FM_LAIC ; 
 int /*<<< orphan*/  FM_LAIL ; 
 int /*<<< orphan*/  FM_LAIM ; 
 int /*<<< orphan*/  FM_SAGP ; 
 int /*<<< orphan*/  FM_SAID ; 
 int /*<<< orphan*/  FM_TREQ0 ; 
 int /*<<< orphan*/  FM_TREQ1 ; 
 size_t MAC0 ; 
 unsigned short my_sagp ; 
 unsigned short my_said ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static	void FUNC2(struct s_smc *smc)
{
	long	t_requ = smc->mib.m[MAC0].fddiMACT_Req ;

	FUNC1(FUNC0(FM_SAID),my_said) ;	/* set short address */
	FUNC1(FUNC0(FM_LAIL),(unsigned short)((smc->hw.fddi_home_addr.a[4]<<8) +
					smc->hw.fddi_home_addr.a[5])) ;
	FUNC1(FUNC0(FM_LAIC),(unsigned short)((smc->hw.fddi_home_addr.a[2]<<8) +
					smc->hw.fddi_home_addr.a[3])) ;
	FUNC1(FUNC0(FM_LAIM),(unsigned short)((smc->hw.fddi_home_addr.a[0]<<8) +
					smc->hw.fddi_home_addr.a[1])) ;

	FUNC1(FUNC0(FM_SAGP),my_sagp) ;	/* set short group address */

	FUNC1(FUNC0(FM_LAGL),(unsigned short)((smc->hw.fp.group_addr.a[4]<<8) +
					smc->hw.fp.group_addr.a[5])) ;
	FUNC1(FUNC0(FM_LAGC),(unsigned short)((smc->hw.fp.group_addr.a[2]<<8) +
					smc->hw.fp.group_addr.a[3])) ;
	FUNC1(FUNC0(FM_LAGM),(unsigned short)((smc->hw.fp.group_addr.a[0]<<8) +
					smc->hw.fp.group_addr.a[1])) ;

	/* set r_request regs. (MSW & LSW of TRT ) */
	FUNC1(FUNC0(FM_TREQ1),(unsigned short)(t_requ>>16)) ;
	FUNC1(FUNC0(FM_TREQ0),(unsigned short)t_requ) ;
}