
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {struct net_device* dev; } ;
struct TYPE_5__ {int list; } ;
struct efx_nic {int rx_prefix_size; int rx_ip_align; int rx_packet_hash_offset; int rx_packet_ts_offset; int num_mac_stats; int workqueue; int workqueue_name; TYPE_4__* type; int interrupt_mode; TYPE_3__* msi_context; int * channel; int flush_wq; int mac_work; TYPE_2__ mdio; int * phy_op; int rps_hash_table; int rps_hash_lock; int rps_mutex; int mac_lock; int vi_stride; int stats_lock; int rss_lock; TYPE_1__ rss_context; struct net_device* net_dev; int name; int state; int msg_enable; struct pci_dev* pci_dev; int selftest_work; int monitor_work; int reset_work; int mtd_list; int biu_lock; int secondary_list; int node; } ;
struct TYPE_8__ {int rx_prefix_size; int rx_hash_offset; int rx_ts_offset; scalar_t__ max_interrupt_mode; scalar_t__ min_interrupt_mode; } ;
struct TYPE_7__ {int index; struct efx_nic* efx; } ;


 int BUILD_BUG_ON (int) ;
 int EFX_ARFS_HASH_TABLE_SIZE ;
 int EFX_DEFAULT_VI_STRIDE ;
 int EFX_MAX_CHANNELS ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MC_CMD_MAC_GENERATION_END ;
 int MC_CMD_MAC_NSTATS ;
 int NET_IP_ALIGN ;
 int STATE_UNINIT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int create_singlethread_workqueue (int ) ;
 int debug ;
 int efx_alloc_channel (struct efx_nic*,int,int *) ;
 int efx_dummy_phy_operations ;
 int efx_fini_struct (struct efx_nic*) ;
 int efx_mac_work ;
 int efx_monitor ;
 int efx_reset_work ;
 int efx_selftest_async_work ;
 int init_waitqueue_head (int *) ;
 int interrupt_mode ;
 int kcalloc (int ,int,int ) ;
 int max (scalar_t__,int ) ;
 int min (scalar_t__,int ) ;
 int mutex_init (int *) ;
 char* pci_name (struct pci_dev*) ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int efx_init_struct(struct efx_nic *efx,
      struct pci_dev *pci_dev, struct net_device *net_dev)
{
 int rc = -ENOMEM, i;


 INIT_LIST_HEAD(&efx->node);
 INIT_LIST_HEAD(&efx->secondary_list);
 spin_lock_init(&efx->biu_lock);



 INIT_WORK(&efx->reset_work, efx_reset_work);
 INIT_DELAYED_WORK(&efx->monitor_work, efx_monitor);
 INIT_DELAYED_WORK(&efx->selftest_work, efx_selftest_async_work);
 efx->pci_dev = pci_dev;
 efx->msg_enable = debug;
 efx->state = STATE_UNINIT;
 strlcpy(efx->name, pci_name(pci_dev), sizeof(efx->name));

 efx->net_dev = net_dev;
 efx->rx_prefix_size = efx->type->rx_prefix_size;
 efx->rx_ip_align =
  NET_IP_ALIGN ? (efx->rx_prefix_size + NET_IP_ALIGN) % 4 : 0;
 efx->rx_packet_hash_offset =
  efx->type->rx_hash_offset - efx->type->rx_prefix_size;
 efx->rx_packet_ts_offset =
  efx->type->rx_ts_offset - efx->type->rx_prefix_size;
 INIT_LIST_HEAD(&efx->rss_context.list);
 mutex_init(&efx->rss_lock);
 spin_lock_init(&efx->stats_lock);
 efx->vi_stride = EFX_DEFAULT_VI_STRIDE;
 efx->num_mac_stats = MC_CMD_MAC_NSTATS;
 BUILD_BUG_ON(MC_CMD_MAC_NSTATS - 1 != MC_CMD_MAC_GENERATION_END);
 mutex_init(&efx->mac_lock);







 efx->phy_op = &efx_dummy_phy_operations;
 efx->mdio.dev = net_dev;
 INIT_WORK(&efx->mac_work, efx_mac_work);
 init_waitqueue_head(&efx->flush_wq);

 for (i = 0; i < EFX_MAX_CHANNELS; i++) {
  efx->channel[i] = efx_alloc_channel(efx, i, ((void*)0));
  if (!efx->channel[i])
   goto fail;
  efx->msi_context[i].efx = efx;
  efx->msi_context[i].index = i;
 }


 if (WARN_ON_ONCE(efx->type->max_interrupt_mode >
    efx->type->min_interrupt_mode)) {
  rc = -EIO;
  goto fail;
 }
 efx->interrupt_mode = max(efx->type->max_interrupt_mode,
      interrupt_mode);
 efx->interrupt_mode = min(efx->type->min_interrupt_mode,
      interrupt_mode);


 snprintf(efx->workqueue_name, sizeof(efx->workqueue_name), "sfc%s",
   pci_name(pci_dev));
 efx->workqueue = create_singlethread_workqueue(efx->workqueue_name);
 if (!efx->workqueue)
  goto fail;

 return 0;

fail:
 efx_fini_struct(efx);
 return rc;
}
