
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct net_device* dev; } ;
struct ef4_nic {int rx_prefix_size; int rx_ip_align; int rx_packet_hash_offset; int rx_packet_ts_offset; int workqueue; int workqueue_name; TYPE_3__* type; int interrupt_mode; TYPE_2__* msi_context; int * channel; int flush_wq; int mac_work; TYPE_1__ mdio; int * phy_op; int mac_lock; int stats_lock; struct net_device* net_dev; int name; int state; int msg_enable; struct pci_dev* pci_dev; int selftest_work; int monitor_work; int reset_work; int mtd_list; int biu_lock; int secondary_list; int node; } ;
struct TYPE_6__ {int rx_prefix_size; int rx_hash_offset; int rx_ts_offset; int max_interrupt_mode; } ;
struct TYPE_5__ {int index; struct ef4_nic* efx; } ;


 int EF4_MAX_CHANNELS ;
 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NET_IP_ALIGN ;
 int STATE_UNINIT ;
 int create_singlethread_workqueue (int ) ;
 int debug ;
 int ef4_alloc_channel (struct ef4_nic*,int,int *) ;
 int ef4_dummy_phy_operations ;
 int ef4_fini_struct (struct ef4_nic*) ;
 int ef4_mac_work ;
 int ef4_monitor ;
 int ef4_reset_work ;
 int ef4_selftest_async_work ;
 int init_waitqueue_head (int *) ;
 int interrupt_mode ;
 int max (int ,int ) ;
 int mutex_init (int *) ;
 char* pci_name (struct pci_dev*) ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int ef4_init_struct(struct ef4_nic *efx,
      struct pci_dev *pci_dev, struct net_device *net_dev)
{
 int i;


 INIT_LIST_HEAD(&efx->node);
 INIT_LIST_HEAD(&efx->secondary_list);
 spin_lock_init(&efx->biu_lock);



 INIT_WORK(&efx->reset_work, ef4_reset_work);
 INIT_DELAYED_WORK(&efx->monitor_work, ef4_monitor);
 INIT_DELAYED_WORK(&efx->selftest_work, ef4_selftest_async_work);
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
 spin_lock_init(&efx->stats_lock);
 mutex_init(&efx->mac_lock);
 efx->phy_op = &ef4_dummy_phy_operations;
 efx->mdio.dev = net_dev;
 INIT_WORK(&efx->mac_work, ef4_mac_work);
 init_waitqueue_head(&efx->flush_wq);

 for (i = 0; i < EF4_MAX_CHANNELS; i++) {
  efx->channel[i] = ef4_alloc_channel(efx, i, ((void*)0));
  if (!efx->channel[i])
   goto fail;
  efx->msi_context[i].efx = efx;
  efx->msi_context[i].index = i;
 }


 efx->interrupt_mode = max(efx->type->max_interrupt_mode,
      interrupt_mode);


 snprintf(efx->workqueue_name, sizeof(efx->workqueue_name), "sfc%s",
   pci_name(pci_dev));
 efx->workqueue = create_singlethread_workqueue(efx->workqueue_name);
 if (!efx->workqueue)
  goto fail;

 return 0;

fail:
 ef4_fini_struct(efx);
 return -ENOMEM;
}
