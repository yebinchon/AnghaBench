
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cvm_mmc_host {scalar_t__ base; } ;


 scalar_t__ MIO_EMM_RSP_STS (struct cvm_mmc_host*) ;
 int MIO_EMM_RSP_STS_SWITCH_VAL ;
 scalar_t__ MIO_EMM_SWITCH (struct cvm_mmc_host*) ;
 int check_switch_errors (struct cvm_mmc_host*) ;
 int clear_bus_id (int*) ;
 int get_bus_id (int) ;
 int readq (scalar_t__) ;
 int set_bus_id (int*,int) ;
 int udelay (int) ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static void do_switch(struct cvm_mmc_host *host, u64 emm_switch)
{
 int retries = 100;
 u64 rsp_sts;
 int bus_id;





 bus_id = get_bus_id(emm_switch);
 clear_bus_id(&emm_switch);
 writeq(emm_switch, host->base + MIO_EMM_SWITCH(host));

 set_bus_id(&emm_switch, bus_id);
 writeq(emm_switch, host->base + MIO_EMM_SWITCH(host));


 do {
  rsp_sts = readq(host->base + MIO_EMM_RSP_STS(host));
  if (!(rsp_sts & MIO_EMM_RSP_STS_SWITCH_VAL))
   break;
  udelay(10);
 } while (--retries);

 check_switch_errors(host);
}
