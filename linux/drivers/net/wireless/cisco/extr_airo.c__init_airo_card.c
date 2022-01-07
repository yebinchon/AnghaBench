
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pci_dev {int device; } ;
struct net_device {unsigned short irq; int base_addr; char* name; struct airo_info* ml_priv; int dev_addr; int max_mtu; int priv_flags; TYPE_3__* wireless_data; int * wireless_handlers; int * netdev_ops; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int * spy_data; } ;
struct TYPE_7__ {int len; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct airo_info {int flags; int wep_capable; int max_wep_idx; int bssListRidLen; struct pci_dev* pci; int pcimem; int pciaux; int shared_dma; int shared; struct net_device* wifidev; int * fids; int bssListNext; int bssListFirst; struct net_device* dev; int bap_read; TYPE_3__ wireless_data; int spy_data; int txq; TYPE_2__ APList; int * tfm; int thr_wait; TYPE_1__ config; int sem; int aux_lock; scalar_t__ jobs; } ;
struct APListRid {int dummy; } ;
struct TYPE_9__ {int softCap; int softSubVer; int softVer; } ;
typedef TYPE_4__ CapabilityRid ;
typedef int BSSListRidExtra ;
typedef int BSSListRid ;


 int AIRO_DEF_MTU ;
 int DRV_NAME ;
 int EBUSY ;
 int EIO ;
 int FLAG_FLASHING ;
 int FLAG_MPI ;
 int FLAG_RADIO_DOWN ;
 int FLAG_REGISTERED ;
 int FLAG_WPA_CAPABLE ;
 int IFF_TX_SKB_SHARING ;
 int MAX_FIDS ;
 int MIC_MSGLEN_MAX ;
 int NET_NAME_UNKNOWN ;
 int PCI_SHARED_LEN ;
 int RID_BSSLISTFIRST ;
 int RID_BSSLISTNEXT ;
 int RID_WPA_BSSLISTFIRST ;
 int RID_WPA_BSSLISTNEXT ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 int SUCCESS ;
 int add_airo_dev (struct airo_info*) ;
 int airo_handler_def ;
 int airo_netdev_ops ;
 scalar_t__ airo_networks_allocate (struct airo_info*) ;
 int airo_networks_free (struct airo_info*) ;
 int airo_networks_initialize (struct airo_info*) ;
 int airo_print_dbg (char*,char*) ;
 int airo_print_err (char*,char*) ;
 int airo_print_info (char*,char*,...) ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 int cpu_to_le16 (int) ;
 int del_airo_dev (struct airo_info*) ;
 int ether_setup ;
 int fast_bap_read ;
 int free_netdev (struct net_device*) ;
 int init_waitqueue_head (int *) ;
 struct net_device* init_wifidev (struct airo_info*,struct net_device*) ;
 int iounmap (int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ mpi_map_card (struct airo_info*,struct pci_dev*) ;
 int mpi_netdev_ops ;
 int mpi_unmap_card (struct pci_dev*) ;
 int msleep (int) ;
 struct airo_info* netdev_priv (struct net_device*) ;
 int pci_free_consistent (struct pci_dev*,int ,int ,int ) ;
 scalar_t__ probe ;
 int readCapabilityRid (struct airo_info*,TYPE_4__*,int) ;
 int register_netdev (struct net_device*) ;
 int release_region (int,int) ;
 int request_region (int,int,int ) ;
 int reset_card (struct net_device*,int) ;
 int sema_init (int *,int) ;
 int set_bit (int ,int*) ;
 int setup_card (struct airo_info*,int ,int) ;
 scalar_t__ setup_proc_entry (struct net_device*,struct airo_info*) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int strcpy (char*,char*) ;
 scalar_t__ test_bit (int ,int*) ;
 int transmit_allocate (struct airo_info*,int ,int) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static struct net_device *_init_airo_card( unsigned short irq, int port,
        int is_pcmcia, struct pci_dev *pci,
        struct device *dmdev )
{
 struct net_device *dev;
 struct airo_info *ai;
 int i, rc;
 CapabilityRid cap_rid;


 dev = alloc_netdev(sizeof(*ai), "", NET_NAME_UNKNOWN, ether_setup);
 if (!dev) {
  airo_print_err("", "Couldn't alloc_etherdev");
  return ((void*)0);
 }

 ai = dev->ml_priv = netdev_priv(dev);
 ai->wifidev = ((void*)0);
 ai->flags = 1 << FLAG_RADIO_DOWN;
 ai->jobs = 0;
 ai->dev = dev;
 if (pci && (pci->device == 0x5000 || pci->device == 0xa504)) {
  airo_print_dbg("", "Found an MPI350 card");
  set_bit(FLAG_MPI, &ai->flags);
 }
 spin_lock_init(&ai->aux_lock);
 sema_init(&ai->sem, 1);
 ai->config.len = 0;
 ai->pci = pci;
 init_waitqueue_head (&ai->thr_wait);
 ai->tfm = ((void*)0);
 add_airo_dev(ai);
 ai->APList.len = cpu_to_le16(sizeof(struct APListRid));

 if (airo_networks_allocate (ai))
  goto err_out_free;
 airo_networks_initialize (ai);

 skb_queue_head_init (&ai->txq);


 if (test_bit(FLAG_MPI,&ai->flags))
  dev->netdev_ops = &mpi_netdev_ops;
 else
  dev->netdev_ops = &airo_netdev_ops;
 dev->wireless_handlers = &airo_handler_def;
 ai->wireless_data.spy_data = &ai->spy_data;
 dev->wireless_data = &ai->wireless_data;
 dev->irq = irq;
 dev->base_addr = port;
 dev->priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->max_mtu = MIC_MSGLEN_MAX;

 SET_NETDEV_DEV(dev, dmdev);

 reset_card (dev, 1);
 msleep(400);

 if (!is_pcmcia) {
  if (!request_region(dev->base_addr, 64, DRV_NAME)) {
   rc = -EBUSY;
   airo_print_err(dev->name, "Couldn't request region");
   goto err_out_nets;
  }
 }

 if (test_bit(FLAG_MPI,&ai->flags)) {
  if (mpi_map_card(ai, pci)) {
   airo_print_err("", "Could not map memory");
   goto err_out_res;
  }
 }

 if (probe) {
  if (setup_card(ai, dev->dev_addr, 1) != SUCCESS) {
   airo_print_err(dev->name, "MAC could not be enabled" );
   rc = -EIO;
   goto err_out_map;
  }
 } else if (!test_bit(FLAG_MPI,&ai->flags)) {
  ai->bap_read = fast_bap_read;
  set_bit(FLAG_FLASHING, &ai->flags);
 }

 strcpy(dev->name, "eth%d");
 rc = register_netdev(dev);
 if (rc) {
  airo_print_err(dev->name, "Couldn't register_netdev");
  goto err_out_map;
 }
 ai->wifidev = init_wifidev(ai, dev);
 if (!ai->wifidev)
  goto err_out_reg;

 rc = readCapabilityRid(ai, &cap_rid, 1);
 if (rc != SUCCESS) {
  rc = -EIO;
  goto err_out_wifi;
 }

 ai->wep_capable = (cap_rid.softCap & cpu_to_le16(0x02)) ? 1 : 0;
 ai->max_wep_idx = (cap_rid.softCap & cpu_to_le16(0x80)) ? 3 : 0;

 airo_print_info(dev->name, "Firmware version %x.%x.%02d",
                 ((le16_to_cpu(cap_rid.softVer) >> 8) & 0xF),
                 (le16_to_cpu(cap_rid.softVer) & 0xFF),
                 le16_to_cpu(cap_rid.softSubVer));



 if (le16_to_cpu(cap_rid.softVer) > 0x530
  || (le16_to_cpu(cap_rid.softVer) == 0x530
       && le16_to_cpu(cap_rid.softSubVer) >= 17)) {
  airo_print_info(ai->dev->name, "WPA supported.");

  set_bit(FLAG_WPA_CAPABLE, &ai->flags);
  ai->bssListFirst = RID_WPA_BSSLISTFIRST;
  ai->bssListNext = RID_WPA_BSSLISTNEXT;
  ai->bssListRidLen = sizeof(BSSListRid);
 } else {
  airo_print_info(ai->dev->name, "WPA unsupported with firmware "
   "versions older than 5.30.17.");

  ai->bssListFirst = RID_BSSLISTFIRST;
  ai->bssListNext = RID_BSSLISTNEXT;
  ai->bssListRidLen = sizeof(BSSListRid) - sizeof(BSSListRidExtra);
 }

 set_bit(FLAG_REGISTERED,&ai->flags);
 airo_print_info(dev->name, "MAC enabled %pM", dev->dev_addr);


 if (probe && !test_bit(FLAG_MPI,&ai->flags))
  for( i = 0; i < MAX_FIDS; i++ )
   ai->fids[i] = transmit_allocate(ai,AIRO_DEF_MTU,i>=MAX_FIDS/2);

 if (setup_proc_entry(dev, dev->ml_priv) < 0)
  goto err_out_wifi;

 return dev;

err_out_wifi:
 unregister_netdev(ai->wifidev);
 free_netdev(ai->wifidev);
err_out_reg:
 unregister_netdev(dev);
err_out_map:
 if (test_bit(FLAG_MPI,&ai->flags) && pci) {
  pci_free_consistent(pci, PCI_SHARED_LEN, ai->shared, ai->shared_dma);
  iounmap(ai->pciaux);
  iounmap(ai->pcimem);
  mpi_unmap_card(ai->pci);
 }
err_out_res:
 if (!is_pcmcia)
         release_region( dev->base_addr, 64 );
err_out_nets:
 airo_networks_free(ai);
err_out_free:
 del_airo_dev(ai);
 free_netdev(dev);
 return ((void*)0);
}
