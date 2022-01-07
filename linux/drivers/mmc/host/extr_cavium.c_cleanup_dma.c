
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cvm_mmc_host {scalar_t__ base; } ;


 int FIELD_PREP (int ,int) ;
 scalar_t__ MIO_EMM_DMA (struct cvm_mmc_host*) ;
 int MIO_EMM_DMA_DAT_NULL ;
 int MIO_EMM_DMA_VAL ;
 int get_bus_id (int) ;
 int readq (scalar_t__) ;
 int set_bus_id (int*,int ) ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static void cleanup_dma(struct cvm_mmc_host *host, u64 rsp_sts)
{
 u64 emm_dma;

 emm_dma = readq(host->base + MIO_EMM_DMA(host));
 emm_dma |= FIELD_PREP(MIO_EMM_DMA_VAL, 1) |
     FIELD_PREP(MIO_EMM_DMA_DAT_NULL, 1);
 set_bus_id(&emm_dma, get_bus_id(rsp_sts));
 writeq(emm_dma, host->base + MIO_EMM_DMA(host));
}
