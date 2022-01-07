
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;


 int __mmc_claim_host (struct mmc_host*,int *,int *) ;

__attribute__((used)) static inline void mmc_claim_host(struct mmc_host *host)
{
 __mmc_claim_host(host, ((void*)0), ((void*)0));
}
