
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int dummy; } ;
struct cqhci_host {TYPE_1__* ops; struct mmc_host* mmc; } ;
struct TYPE_2__ {int (* dumpregs ) (struct mmc_host*) ;} ;


 int CQHCI_CAP ;
 int CQHCI_CFG ;
 int CQHCI_CRA ;
 int CQHCI_CRDCT ;
 int CQHCI_CRI ;
 int CQHCI_CTL ;
 int CQHCI_DPT ;
 int CQHCI_DQS ;
 int CQHCI_DUMP (char*,...) ;
 int CQHCI_IC ;
 int CQHCI_IS ;
 int CQHCI_ISGE ;
 int CQHCI_ISTE ;
 int CQHCI_RMEM ;
 int CQHCI_SSC1 ;
 int CQHCI_SSC2 ;
 int CQHCI_TCLR ;
 int CQHCI_TCN ;
 int CQHCI_TDBR ;
 int CQHCI_TDLBA ;
 int CQHCI_TDLBAU ;
 int CQHCI_TERRI ;
 int CQHCI_VER ;
 int cqhci_readl (struct cqhci_host*,int ) ;
 int stub1 (struct mmc_host*) ;

__attribute__((used)) static void cqhci_dumpregs(struct cqhci_host *cq_host)
{
 struct mmc_host *mmc = cq_host->mmc;

 CQHCI_DUMP("============ CQHCI REGISTER DUMP ===========\n");

 CQHCI_DUMP("Caps:      0x%08x | Version:  0x%08x\n",
     cqhci_readl(cq_host, CQHCI_CAP),
     cqhci_readl(cq_host, CQHCI_VER));
 CQHCI_DUMP("Config:    0x%08x | Control:  0x%08x\n",
     cqhci_readl(cq_host, CQHCI_CFG),
     cqhci_readl(cq_host, CQHCI_CTL));
 CQHCI_DUMP("Int stat:  0x%08x | Int enab: 0x%08x\n",
     cqhci_readl(cq_host, CQHCI_IS),
     cqhci_readl(cq_host, CQHCI_ISTE));
 CQHCI_DUMP("Int sig:   0x%08x | Int Coal: 0x%08x\n",
     cqhci_readl(cq_host, CQHCI_ISGE),
     cqhci_readl(cq_host, CQHCI_IC));
 CQHCI_DUMP("TDL base:  0x%08x | TDL up32: 0x%08x\n",
     cqhci_readl(cq_host, CQHCI_TDLBA),
     cqhci_readl(cq_host, CQHCI_TDLBAU));
 CQHCI_DUMP("Doorbell:  0x%08x | TCN:      0x%08x\n",
     cqhci_readl(cq_host, CQHCI_TDBR),
     cqhci_readl(cq_host, CQHCI_TCN));
 CQHCI_DUMP("Dev queue: 0x%08x | Dev Pend: 0x%08x\n",
     cqhci_readl(cq_host, CQHCI_DQS),
     cqhci_readl(cq_host, CQHCI_DPT));
 CQHCI_DUMP("Task clr:  0x%08x | SSC1:     0x%08x\n",
     cqhci_readl(cq_host, CQHCI_TCLR),
     cqhci_readl(cq_host, CQHCI_SSC1));
 CQHCI_DUMP("SSC2:      0x%08x | DCMD rsp: 0x%08x\n",
     cqhci_readl(cq_host, CQHCI_SSC2),
     cqhci_readl(cq_host, CQHCI_CRDCT));
 CQHCI_DUMP("RED mask:  0x%08x | TERRI:    0x%08x\n",
     cqhci_readl(cq_host, CQHCI_RMEM),
     cqhci_readl(cq_host, CQHCI_TERRI));
 CQHCI_DUMP("Resp idx:  0x%08x | Resp arg: 0x%08x\n",
     cqhci_readl(cq_host, CQHCI_CRI),
     cqhci_readl(cq_host, CQHCI_CRA));

 if (cq_host->ops->dumpregs)
  cq_host->ops->dumpregs(mmc);
 else
  CQHCI_DUMP(": ===========================================\n");
}
