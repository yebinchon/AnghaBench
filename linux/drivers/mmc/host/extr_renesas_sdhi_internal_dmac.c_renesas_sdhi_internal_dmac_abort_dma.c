
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tmio_mmc_host {int dummy; } ;


 int DM_CM_RST ;
 int RST_DTRANRST0 ;
 int RST_DTRANRST1 ;
 int RST_RESERVED_BITS ;
 int SDHI_INTERNAL_DMAC_RX_IN_USE ;
 int clear_bit (int ,int *) ;
 int global_flags ;
 int renesas_sdhi_internal_dmac_dm_write (struct tmio_mmc_host*,int ,int) ;
 int renesas_sdhi_internal_dmac_enable_dma (struct tmio_mmc_host*,int) ;

__attribute__((used)) static void
renesas_sdhi_internal_dmac_abort_dma(struct tmio_mmc_host *host) {
 u64 val = RST_DTRANRST1 | RST_DTRANRST0;

 renesas_sdhi_internal_dmac_enable_dma(host, 0);

 renesas_sdhi_internal_dmac_dm_write(host, DM_CM_RST,
         RST_RESERVED_BITS & ~val);
 renesas_sdhi_internal_dmac_dm_write(host, DM_CM_RST,
         RST_RESERVED_BITS | val);

 clear_bit(SDHI_INTERNAL_DMAC_RX_IN_USE, &global_flags);

 renesas_sdhi_internal_dmac_enable_dma(host, 1);
}
