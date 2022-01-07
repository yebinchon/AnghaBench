
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {unsigned int ubrc; unsigned int uprc; unsigned int ubtc; unsigned int uptc; int dpc; } ;
struct hw_atl_utils_mbox {TYPE_2__ stats; } ;
struct aq_hw_s {int dpc; TYPE_1__* aq_nic_cfg; int mbox_addr; } ;
struct TYPE_3__ {unsigned int mtu; } ;


 scalar_t__ IS_CHIP_FEATURE (int ) ;
 int REVISION_A0 ;
 int atomic_read (int *) ;
 int hw_atl_rpb_rx_dma_drop_pkt_cnt_get (struct aq_hw_s*) ;
 int hw_atl_utils_fw_downld_dwords (struct aq_hw_s*,int ,int *,int) ;

void hw_atl_utils_mpi_read_stats(struct aq_hw_s *self,
     struct hw_atl_utils_mbox *pmbox)
{
 int err = 0;

 err = hw_atl_utils_fw_downld_dwords(self,
         self->mbox_addr,
         (u32 *)(void *)pmbox,
         sizeof(*pmbox) / sizeof(u32));
 if (err < 0)
  goto err_exit;

 if (IS_CHIP_FEATURE(REVISION_A0)) {
  unsigned int mtu = self->aq_nic_cfg ?
     self->aq_nic_cfg->mtu : 1514U;
  pmbox->stats.ubrc = pmbox->stats.uprc * mtu;
  pmbox->stats.ubtc = pmbox->stats.uptc * mtu;
  pmbox->stats.dpc = atomic_read(&self->dpc);
 } else {
  pmbox->stats.dpc = hw_atl_rpb_rx_dma_drop_pkt_cnt_get(self);
 }

err_exit:;
}
