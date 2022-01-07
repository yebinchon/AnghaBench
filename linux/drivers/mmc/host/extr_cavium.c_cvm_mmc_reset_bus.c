
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cvm_mmc_slot {int cached_switch; struct cvm_mmc_host* host; int bus_id; } ;
struct cvm_mmc_host {scalar_t__ base; } ;


 scalar_t__ MIO_EMM_SWITCH (struct cvm_mmc_host*) ;
 int MIO_EMM_SWITCH_ERR0 ;
 int MIO_EMM_SWITCH_ERR1 ;
 int MIO_EMM_SWITCH_ERR2 ;
 int MIO_EMM_SWITCH_EXE ;
 scalar_t__ MIO_EMM_WDOG (struct cvm_mmc_host*) ;
 int do_switch (struct cvm_mmc_host*,int) ;
 int msleep (int) ;
 int readq (scalar_t__) ;
 int set_bus_id (int*,int ) ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static void cvm_mmc_reset_bus(struct cvm_mmc_slot *slot)
{
 struct cvm_mmc_host *host = slot->host;
 u64 emm_switch, wdog;

 emm_switch = readq(slot->host->base + MIO_EMM_SWITCH(host));
 emm_switch &= ~(MIO_EMM_SWITCH_EXE | MIO_EMM_SWITCH_ERR0 |
   MIO_EMM_SWITCH_ERR1 | MIO_EMM_SWITCH_ERR2);
 set_bus_id(&emm_switch, slot->bus_id);

 wdog = readq(slot->host->base + MIO_EMM_WDOG(host));
 do_switch(slot->host, emm_switch);

 slot->cached_switch = emm_switch;

 msleep(20);

 writeq(wdog, slot->host->base + MIO_EMM_WDOG(host));
}
