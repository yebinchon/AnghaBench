
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cvm_mmc_host {scalar_t__ base; } ;


 scalar_t__ MIO_EMM_INT (struct cvm_mmc_host*) ;
 scalar_t__ MIO_EMM_INT_EN_SET (struct cvm_mmc_host*) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static void thunder_mmc_int_enable(struct cvm_mmc_host *host, u64 val)
{
 writeq(val, host->base + MIO_EMM_INT(host));
 writeq(val, host->base + MIO_EMM_INT_EN_SET(host));
}
