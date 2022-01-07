
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cvm_mmc_host {int dev; scalar_t__ base; } ;


 scalar_t__ MIO_EMM_SWITCH (struct cvm_mmc_host*) ;
 int MIO_EMM_SWITCH_ERR0 ;
 int MIO_EMM_SWITCH_ERR1 ;
 int MIO_EMM_SWITCH_ERR2 ;
 int dev_err (int ,char*) ;
 int readq (scalar_t__) ;

__attribute__((used)) static void check_switch_errors(struct cvm_mmc_host *host)
{
 u64 emm_switch;

 emm_switch = readq(host->base + MIO_EMM_SWITCH(host));
 if (emm_switch & MIO_EMM_SWITCH_ERR0)
  dev_err(host->dev, "Switch power class error\n");
 if (emm_switch & MIO_EMM_SWITCH_ERR1)
  dev_err(host->dev, "Switch hs timing error\n");
 if (emm_switch & MIO_EMM_SWITCH_ERR2)
  dev_err(host->dev, "Switch bus width error\n");
}
