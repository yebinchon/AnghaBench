
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cqhci_host {int dummy; } ;


 int CQHCI_VER ;
 unsigned int CQHCI_VER_MAJOR (int ) ;
 int cqhci_readl (struct cqhci_host*,int ) ;

__attribute__((used)) static unsigned int cqhci_ver_major(struct cqhci_host *cq_host)
{
 return CQHCI_VER_MAJOR(cqhci_readl(cq_host, CQHCI_VER));
}
