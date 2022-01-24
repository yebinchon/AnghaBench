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
struct mmc_host {int dummy; } ;
struct cqhci_host {TYPE_1__* ops; struct mmc_host* mmc; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dumpregs ) (struct mmc_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CQHCI_CAP ; 
 int /*<<< orphan*/  CQHCI_CFG ; 
 int /*<<< orphan*/  CQHCI_CRA ; 
 int /*<<< orphan*/  CQHCI_CRDCT ; 
 int /*<<< orphan*/  CQHCI_CRI ; 
 int /*<<< orphan*/  CQHCI_CTL ; 
 int /*<<< orphan*/  CQHCI_DPT ; 
 int /*<<< orphan*/  CQHCI_DQS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  CQHCI_IC ; 
 int /*<<< orphan*/  CQHCI_IS ; 
 int /*<<< orphan*/  CQHCI_ISGE ; 
 int /*<<< orphan*/  CQHCI_ISTE ; 
 int /*<<< orphan*/  CQHCI_RMEM ; 
 int /*<<< orphan*/  CQHCI_SSC1 ; 
 int /*<<< orphan*/  CQHCI_SSC2 ; 
 int /*<<< orphan*/  CQHCI_TCLR ; 
 int /*<<< orphan*/  CQHCI_TCN ; 
 int /*<<< orphan*/  CQHCI_TDBR ; 
 int /*<<< orphan*/  CQHCI_TDLBA ; 
 int /*<<< orphan*/  CQHCI_TDLBAU ; 
 int /*<<< orphan*/  CQHCI_TERRI ; 
 int /*<<< orphan*/  CQHCI_VER ; 
 int /*<<< orphan*/  FUNC1 (struct cqhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 

__attribute__((used)) static void FUNC3(struct cqhci_host *cq_host)
{
	struct mmc_host *mmc = cq_host->mmc;

	FUNC0("============ CQHCI REGISTER DUMP ===========\n");

	FUNC0("Caps:      0x%08x | Version:  0x%08x\n",
		   FUNC1(cq_host, CQHCI_CAP),
		   FUNC1(cq_host, CQHCI_VER));
	FUNC0("Config:    0x%08x | Control:  0x%08x\n",
		   FUNC1(cq_host, CQHCI_CFG),
		   FUNC1(cq_host, CQHCI_CTL));
	FUNC0("Int stat:  0x%08x | Int enab: 0x%08x\n",
		   FUNC1(cq_host, CQHCI_IS),
		   FUNC1(cq_host, CQHCI_ISTE));
	FUNC0("Int sig:   0x%08x | Int Coal: 0x%08x\n",
		   FUNC1(cq_host, CQHCI_ISGE),
		   FUNC1(cq_host, CQHCI_IC));
	FUNC0("TDL base:  0x%08x | TDL up32: 0x%08x\n",
		   FUNC1(cq_host, CQHCI_TDLBA),
		   FUNC1(cq_host, CQHCI_TDLBAU));
	FUNC0("Doorbell:  0x%08x | TCN:      0x%08x\n",
		   FUNC1(cq_host, CQHCI_TDBR),
		   FUNC1(cq_host, CQHCI_TCN));
	FUNC0("Dev queue: 0x%08x | Dev Pend: 0x%08x\n",
		   FUNC1(cq_host, CQHCI_DQS),
		   FUNC1(cq_host, CQHCI_DPT));
	FUNC0("Task clr:  0x%08x | SSC1:     0x%08x\n",
		   FUNC1(cq_host, CQHCI_TCLR),
		   FUNC1(cq_host, CQHCI_SSC1));
	FUNC0("SSC2:      0x%08x | DCMD rsp: 0x%08x\n",
		   FUNC1(cq_host, CQHCI_SSC2),
		   FUNC1(cq_host, CQHCI_CRDCT));
	FUNC0("RED mask:  0x%08x | TERRI:    0x%08x\n",
		   FUNC1(cq_host, CQHCI_RMEM),
		   FUNC1(cq_host, CQHCI_TERRI));
	FUNC0("Resp idx:  0x%08x | Resp arg: 0x%08x\n",
		   FUNC1(cq_host, CQHCI_CRI),
		   FUNC1(cq_host, CQHCI_CRA));

	if (cq_host->ops->dumpregs)
		cq_host->ops->dumpregs(mmc);
	else
		FUNC0(": ===========================================\n");
}