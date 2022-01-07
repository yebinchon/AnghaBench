
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cqhci_host {int dummy; } ;


 int CQHCI_CTL ;
 int CQHCI_HALT ;
 int cqhci_readl (struct cqhci_host*,int ) ;

__attribute__((used)) static bool cqhci_halted(struct cqhci_host *cq_host)
{
 return cqhci_readl(cq_host, CQHCI_CTL) & CQHCI_HALT;
}
