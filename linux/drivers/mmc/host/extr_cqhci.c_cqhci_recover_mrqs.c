
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cqhci_host {int num_slots; } ;


 int cqhci_recover_mrq (struct cqhci_host*,int) ;

__attribute__((used)) static void cqhci_recover_mrqs(struct cqhci_host *cq_host)
{
 int i;

 for (i = 0; i < cq_host->num_slots; i++)
  cqhci_recover_mrq(cq_host, i);
}
