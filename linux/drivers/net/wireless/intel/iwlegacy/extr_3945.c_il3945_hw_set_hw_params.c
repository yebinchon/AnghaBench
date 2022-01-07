
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int tfd_size; int beacon_time_tsf_bits; int max_beacon_itrvl; int rx_wrt_ptr_reg; int max_stations; int max_rxq_log; int max_rxq_size; int rx_page_order; int max_txq_num; int bcast_id; } ;
struct TYPE_6__ {int shared_virt; int shared_phys; } ;
struct il_priv {TYPE_4__ hw_params; int sta_key_max_num; TYPE_3__* cfg; TYPE_2__ _3945; TYPE_1__* pci_dev; } ;
struct il_hw_params {int dummy; } ;
struct il3945_tfd {int dummy; } ;
struct il3945_shared {int dummy; } ;
struct TYPE_7__ {int num_of_queues; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int FH39_RSCSR_CHNL0_WPTR ;
 int GFP_KERNEL ;
 int IL3945_BROADCAST_ID ;
 int IL3945_EXT_BEACON_TIME_POS ;
 int IL3945_STATION_COUNT ;
 int IL39_MAX_UCODE_BEACON_INTERVAL ;
 int IL_RX_BUF_SIZE_3K ;
 int RX_QUEUE_SIZE ;
 int RX_QUEUE_SIZE_LOG ;
 int STA_KEY_MAX_NUM ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int get_order (int ) ;
 int memset (void*,int ,int) ;

int
il3945_hw_set_hw_params(struct il_priv *il)
{
 memset((void *)&il->hw_params, 0, sizeof(struct il_hw_params));

 il->_3945.shared_virt =
     dma_alloc_coherent(&il->pci_dev->dev, sizeof(struct il3945_shared),
          &il->_3945.shared_phys, GFP_KERNEL);
 if (!il->_3945.shared_virt)
  return -ENOMEM;

 il->hw_params.bcast_id = IL3945_BROADCAST_ID;


 il->hw_params.max_txq_num = il->cfg->num_of_queues;

 il->hw_params.tfd_size = sizeof(struct il3945_tfd);
 il->hw_params.rx_page_order = get_order(IL_RX_BUF_SIZE_3K);
 il->hw_params.max_rxq_size = RX_QUEUE_SIZE;
 il->hw_params.max_rxq_log = RX_QUEUE_SIZE_LOG;
 il->hw_params.max_stations = IL3945_STATION_COUNT;

 il->sta_key_max_num = STA_KEY_MAX_NUM;

 il->hw_params.rx_wrt_ptr_reg = FH39_RSCSR_CHNL0_WPTR;
 il->hw_params.max_beacon_itrvl = IL39_MAX_UCODE_BEACON_INTERVAL;
 il->hw_params.beacon_time_tsf_bits = IL3945_EXT_BEACON_TIME_POS;

 return 0;
}
