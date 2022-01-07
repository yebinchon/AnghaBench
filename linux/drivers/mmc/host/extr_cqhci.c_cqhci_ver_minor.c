
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cqhci_host {int dummy; } ;


 int CQHCI_VER ;
 int CQHCI_VER_MINOR1 (int ) ;
 unsigned int CQHCI_VER_MINOR2 (int ) ;
 int cqhci_readl (struct cqhci_host*,int ) ;

__attribute__((used)) static unsigned int cqhci_ver_minor(struct cqhci_host *cq_host)
{
 u32 ver = cqhci_readl(cq_host, CQHCI_VER);

 return CQHCI_VER_MINOR1(ver) * 10 + CQHCI_VER_MINOR2(ver);
}
