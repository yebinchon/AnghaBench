
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cqhci_host {int dummy; } ;


 int CQHCI_ISGE ;
 int CQHCI_ISTE ;
 int cqhci_writel (struct cqhci_host*,int ,int ) ;

__attribute__((used)) static void cqhci_set_irqs(struct cqhci_host *cq_host, u32 set)
{
 cqhci_writel(cq_host, set, CQHCI_ISTE);
 cqhci_writel(cq_host, set, CQHCI_ISGE);
}
