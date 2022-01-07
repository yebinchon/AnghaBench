
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cvm_mmc_slot {size_t bus_id; int cached_switch; int cached_rca; int dat_cnt; int cmd_cnt; struct cvm_mmc_host* host; } ;
struct cvm_mmc_host {size_t last_slot; scalar_t__ base; struct cvm_mmc_slot** slot; } ;


 int FIELD_PREP (int ,int ) ;
 scalar_t__ MIO_EMM_RCA (struct cvm_mmc_host*) ;
 scalar_t__ MIO_EMM_SAMPLE (struct cvm_mmc_host*) ;
 int MIO_EMM_SAMPLE_CMD_CNT ;
 int MIO_EMM_SAMPLE_DAT_CNT ;
 scalar_t__ MIO_EMM_SWITCH (struct cvm_mmc_host*) ;
 int do_switch (struct cvm_mmc_host*,int) ;
 void* readq (scalar_t__) ;
 int set_bus_id (int*,size_t) ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static void cvm_mmc_switch_to(struct cvm_mmc_slot *slot)
{
 struct cvm_mmc_host *host = slot->host;
 struct cvm_mmc_slot *old_slot;
 u64 emm_sample, emm_switch;

 if (slot->bus_id == host->last_slot)
  return;

 if (host->last_slot >= 0 && host->slot[host->last_slot]) {
  old_slot = host->slot[host->last_slot];
  old_slot->cached_switch = readq(host->base + MIO_EMM_SWITCH(host));
  old_slot->cached_rca = readq(host->base + MIO_EMM_RCA(host));
 }

 writeq(slot->cached_rca, host->base + MIO_EMM_RCA(host));
 emm_switch = slot->cached_switch;
 set_bus_id(&emm_switch, slot->bus_id);
 do_switch(host, emm_switch);

 emm_sample = FIELD_PREP(MIO_EMM_SAMPLE_CMD_CNT, slot->cmd_cnt) |
       FIELD_PREP(MIO_EMM_SAMPLE_DAT_CNT, slot->dat_cnt);
 writeq(emm_sample, host->base + MIO_EMM_SAMPLE(host));

 host->last_slot = slot->bus_id;
}
