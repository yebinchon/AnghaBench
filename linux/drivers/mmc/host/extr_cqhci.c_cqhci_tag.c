
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int tag; scalar_t__ cmd; } ;


 int DCMD_SLOT ;

__attribute__((used)) static inline int cqhci_tag(struct mmc_request *mrq)
{
 return mrq->cmd ? DCMD_SLOT : mrq->tag;
}
