
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hifmc_host {scalar_t__ regbase; } ;


 scalar_t__ FMC_INT ;
 int FMC_INT_OP_DONE ;
 int FMC_WAIT_TIMEOUT ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int ) ;

__attribute__((used)) static inline int hisi_spi_nor_wait_op_finish(struct hifmc_host *host)
{
 u32 reg;

 return readl_poll_timeout(host->regbase + FMC_INT, reg,
  (reg & FMC_INT_OP_DONE), 0, FMC_WAIT_TIMEOUT);
}
