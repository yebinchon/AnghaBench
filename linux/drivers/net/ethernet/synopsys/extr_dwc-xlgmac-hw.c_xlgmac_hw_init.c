
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_desc_ops {int (* rx_desc_init ) (struct xlgmac_pdata*) ;int (* tx_desc_init ) (struct xlgmac_pdata*) ;} ;
struct xlgmac_pdata {int rx_threshold; int tx_threshold; int rx_sf_mode; int tx_sf_mode; struct xlgmac_desc_ops desc_ops; } ;


 int stub1 (struct xlgmac_pdata*) ;
 int stub2 (struct xlgmac_pdata*) ;
 int xlgmac_config_checksum_offload (struct xlgmac_pdata*) ;
 int xlgmac_config_dma_bus (struct xlgmac_pdata*) ;
 int xlgmac_config_flow_control (struct xlgmac_pdata*) ;
 int xlgmac_config_flow_control_threshold (struct xlgmac_pdata*) ;
 int xlgmac_config_jumbo_enable (struct xlgmac_pdata*) ;
 int xlgmac_config_mac_address (struct xlgmac_pdata*) ;
 int xlgmac_config_mac_speed (struct xlgmac_pdata*) ;
 int xlgmac_config_mmc (struct xlgmac_pdata*) ;
 int xlgmac_config_mtl_mode (struct xlgmac_pdata*) ;
 int xlgmac_config_osp_mode (struct xlgmac_pdata*) ;
 int xlgmac_config_pblx8 (struct xlgmac_pdata*) ;
 int xlgmac_config_queue_mapping (struct xlgmac_pdata*) ;
 int xlgmac_config_rsf_mode (struct xlgmac_pdata*,int ) ;
 int xlgmac_config_rss (struct xlgmac_pdata*) ;
 int xlgmac_config_rx_buffer_size (struct xlgmac_pdata*) ;
 int xlgmac_config_rx_coalesce (struct xlgmac_pdata*) ;
 int xlgmac_config_rx_fep_enable (struct xlgmac_pdata*) ;
 int xlgmac_config_rx_fifo_size (struct xlgmac_pdata*) ;
 int xlgmac_config_rx_fup_enable (struct xlgmac_pdata*) ;
 int xlgmac_config_rx_mode (struct xlgmac_pdata*) ;
 int xlgmac_config_rx_pbl_val (struct xlgmac_pdata*) ;
 int xlgmac_config_rx_threshold (struct xlgmac_pdata*,int ) ;
 int xlgmac_config_sph_mode (struct xlgmac_pdata*) ;
 int xlgmac_config_tsf_mode (struct xlgmac_pdata*,int ) ;
 int xlgmac_config_tso_mode (struct xlgmac_pdata*) ;
 int xlgmac_config_tx_coalesce (struct xlgmac_pdata*) ;
 int xlgmac_config_tx_fifo_size (struct xlgmac_pdata*) ;
 int xlgmac_config_tx_pbl_val (struct xlgmac_pdata*) ;
 int xlgmac_config_tx_threshold (struct xlgmac_pdata*,int ) ;
 int xlgmac_config_vlan_support (struct xlgmac_pdata*) ;
 int xlgmac_enable_dma_interrupts (struct xlgmac_pdata*) ;
 int xlgmac_enable_mac_interrupts (struct xlgmac_pdata*) ;
 int xlgmac_enable_mtl_interrupts (struct xlgmac_pdata*) ;
 int xlgmac_flush_tx_queues (struct xlgmac_pdata*) ;

__attribute__((used)) static int xlgmac_hw_init(struct xlgmac_pdata *pdata)
{
 struct xlgmac_desc_ops *desc_ops = &pdata->desc_ops;
 int ret;


 ret = xlgmac_flush_tx_queues(pdata);
 if (ret)
  return ret;


 xlgmac_config_dma_bus(pdata);
 xlgmac_config_osp_mode(pdata);
 xlgmac_config_pblx8(pdata);
 xlgmac_config_tx_pbl_val(pdata);
 xlgmac_config_rx_pbl_val(pdata);
 xlgmac_config_rx_coalesce(pdata);
 xlgmac_config_tx_coalesce(pdata);
 xlgmac_config_rx_buffer_size(pdata);
 xlgmac_config_tso_mode(pdata);
 xlgmac_config_sph_mode(pdata);
 xlgmac_config_rss(pdata);
 desc_ops->tx_desc_init(pdata);
 desc_ops->rx_desc_init(pdata);
 xlgmac_enable_dma_interrupts(pdata);


 xlgmac_config_mtl_mode(pdata);
 xlgmac_config_queue_mapping(pdata);
 xlgmac_config_tsf_mode(pdata, pdata->tx_sf_mode);
 xlgmac_config_rsf_mode(pdata, pdata->rx_sf_mode);
 xlgmac_config_tx_threshold(pdata, pdata->tx_threshold);
 xlgmac_config_rx_threshold(pdata, pdata->rx_threshold);
 xlgmac_config_tx_fifo_size(pdata);
 xlgmac_config_rx_fifo_size(pdata);
 xlgmac_config_flow_control_threshold(pdata);
 xlgmac_config_rx_fep_enable(pdata);
 xlgmac_config_rx_fup_enable(pdata);
 xlgmac_enable_mtl_interrupts(pdata);


 xlgmac_config_mac_address(pdata);
 xlgmac_config_rx_mode(pdata);
 xlgmac_config_jumbo_enable(pdata);
 xlgmac_config_flow_control(pdata);
 xlgmac_config_mac_speed(pdata);
 xlgmac_config_checksum_offload(pdata);
 xlgmac_config_vlan_support(pdata);
 xlgmac_config_mmc(pdata);
 xlgmac_enable_mac_interrupts(pdata);

 return 0;
}
