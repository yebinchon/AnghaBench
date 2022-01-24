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
typedef  int /*<<< orphan*/  u_short ;
struct TYPE_2__ {int /*<<< orphan*/  fddiSMTCF_State; } ;
struct s_smc {TYPE_1__ mib; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_CONNECT ; 
 int /*<<< orphan*/  EC_DISCONNECT ; 
 int /*<<< orphan*/  EVENT_ECM ; 
 int /*<<< orphan*/  FUNC0 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u_short FUNC2(struct s_smc *smc, int on)
{
	FUNC1(smc,EVENT_ECM,on ? EC_CONNECT : EC_DISCONNECT) ;
	FUNC0(smc) ;
	return smc->mib.fddiSMTCF_State;
}