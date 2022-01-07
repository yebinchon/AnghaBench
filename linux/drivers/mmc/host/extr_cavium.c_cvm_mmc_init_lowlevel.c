
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cvm_mmc_slot {unsigned long long bus_id; int clock; int cached_switch; TYPE_1__* mmc; struct cvm_mmc_host* host; } ;
struct cvm_mmc_host {unsigned long long emm_cfg; int sys_freq; scalar_t__ base; } ;
struct TYPE_2__ {int f_min; } ;


 int FIELD_PREP (int ,int) ;
 scalar_t__ MIO_EMM_CFG (struct cvm_mmc_host*) ;
 scalar_t__ MIO_EMM_RCA (struct cvm_mmc_host*) ;
 scalar_t__ MIO_EMM_STS_MASK (struct cvm_mmc_host*) ;
 int MIO_EMM_SWITCH_CLK_HI ;
 int MIO_EMM_SWITCH_CLK_LO ;
 int MIO_EMM_SWITCH_POWER_CLASS ;
 int cvm_mmc_set_clock (struct cvm_mmc_slot*,int ) ;
 int do_switch (struct cvm_mmc_host*,int ) ;
 int set_bus_id (int *,unsigned long long) ;
 int set_wdog (struct cvm_mmc_slot*,int ) ;
 int udelay (int) ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static int cvm_mmc_init_lowlevel(struct cvm_mmc_slot *slot)
{
 struct cvm_mmc_host *host = slot->host;
 u64 emm_switch;


 host->emm_cfg |= (1ull << slot->bus_id);
 writeq(host->emm_cfg, slot->host->base + MIO_EMM_CFG(host));
 udelay(10);


 cvm_mmc_set_clock(slot, slot->mmc->f_min);
 emm_switch = FIELD_PREP(MIO_EMM_SWITCH_POWER_CLASS, 10);
 emm_switch |= FIELD_PREP(MIO_EMM_SWITCH_CLK_HI,
     (host->sys_freq / slot->clock) / 2);
 emm_switch |= FIELD_PREP(MIO_EMM_SWITCH_CLK_LO,
     (host->sys_freq / slot->clock) / 2);


 set_bus_id(&emm_switch, slot->bus_id);
 do_switch(host, emm_switch);

 slot->cached_switch = emm_switch;







 set_wdog(slot, 0);
 writeq(0xe4390080ull, host->base + MIO_EMM_STS_MASK(host));
 writeq(1, host->base + MIO_EMM_RCA(host));
 return 0;
}
