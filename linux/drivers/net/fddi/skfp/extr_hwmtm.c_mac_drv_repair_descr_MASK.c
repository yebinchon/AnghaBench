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
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_5__ {int /*<<< orphan*/ * rx; TYPE_1__* tx_q; int /*<<< orphan*/ * tx; } ;
struct TYPE_6__ {scalar_t__ hw_state; TYPE_2__ fp; } ;
struct s_smc {TYPE_3__ hw; } ;
struct TYPE_4__ {scalar_t__ tx_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B0_R1_CSR ; 
 int /*<<< orphan*/  B0_XA_CSR ; 
 int /*<<< orphan*/  B0_XS_CSR ; 
 int /*<<< orphan*/  B4_R1_DA ; 
 int /*<<< orphan*/  B5_XA_DA ; 
 int /*<<< orphan*/  B5_XS_DA ; 
 int /*<<< orphan*/  CSR_START ; 
 int /*<<< orphan*/  HWM_E0013 ; 
 int /*<<< orphan*/  HWM_E0013_MSG ; 
 size_t QUEUE_A0 ; 
 size_t QUEUE_R1 ; 
 size_t QUEUE_S ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ STOPPED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct s_smc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct s_smc*,int /*<<< orphan*/ ) ; 

void FUNC6(struct s_smc *smc)
{
	u_long	phys ;

	if (smc->hw.hw_state != STOPPED) {
		FUNC1() ;
		FUNC2(smc,HWM_E0013,HWM_E0013_MSG) ;
		return ;
	}

	/*
	 * repair tx queues: don't start
	 */
	phys = FUNC5(smc,smc->hw.fp.tx[QUEUE_A0]) ;
	FUNC3(FUNC0(B5_XA_DA),phys) ;
	if (smc->hw.fp.tx_q[QUEUE_A0].tx_used) {
		FUNC3(FUNC0(B0_XA_CSR),CSR_START) ;
	}
	phys = FUNC5(smc,smc->hw.fp.tx[QUEUE_S]) ;
	FUNC3(FUNC0(B5_XS_DA),phys) ;
	if (smc->hw.fp.tx_q[QUEUE_S].tx_used) {
		FUNC3(FUNC0(B0_XS_CSR),CSR_START) ;
	}

	/*
	 * repair rx queues
	 */
	phys = FUNC4(smc,smc->hw.fp.rx[QUEUE_R1]) ;
	FUNC3(FUNC0(B4_R1_DA),phys) ;
	FUNC3(FUNC0(B0_R1_CSR),CSR_START) ;
}