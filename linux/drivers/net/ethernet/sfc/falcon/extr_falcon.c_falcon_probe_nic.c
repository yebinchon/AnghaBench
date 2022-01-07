
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct pci_dev {scalar_t__ bus; scalar_t__ devfn; } ;
struct falcon_nic_data {int stats_disable_count; struct pci_dev* pci_dev2; int stats_timer; struct ef4_nic* efx; } ;
struct TYPE_12__ {int * parent; } ;
struct TYPE_15__ {int name; TYPE_2__ dev; TYPE_8__* algo_data; int owner; } ;
struct TYPE_16__ {struct ef4_nic* data; } ;
struct falcon_board {TYPE_5__ i2c_adap; TYPE_3__* type; TYPE_8__ i2c_data; } ;
struct TYPE_17__ {int dma_addr; int addr; } ;
struct ef4_nic {int max_channels; int max_tx_channels; int timer_quantum_ns; int timer_max_ns; struct falcon_nic_data* nic_data; TYPE_9__ irq_status; int net_dev; TYPE_4__* pci_dev; TYPE_1__* type; struct ef4_nic* primary; } ;
typedef int ef4_oword_t ;
struct TYPE_14__ {int revision; scalar_t__ bus; scalar_t__ devfn; int dev; } ;
struct TYPE_13__ {int (* init ) (struct ef4_nic*) ;} ;
struct TYPE_11__ {int timer_period_max; } ;


 int BUG_ON (int) ;
 int EF4_MAX_CHANNELS ;
 scalar_t__ EF4_OWORD_FIELD (int ,int ) ;
 scalar_t__ EF4_REV_FALCON_A1 ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int FRF_AA_STRAP_PCIE ;
 int FRF_AB_STRAP_10G ;
 int FR_AB_NIC_STAT ;
 int GFP_KERNEL ;
 int PCI_DEVICE_ID_SOLARFLARE_SFC4000A_1 ;
 int PCI_VENDOR_ID_SOLARFLARE ;
 int RESET_TYPE_ALL ;
 int THIS_MODULE ;
 int __falcon_reset_hw (struct ef4_nic*,int ) ;
 scalar_t__ ef4_farch_fpga_ver (struct ef4_nic*) ;
 int ef4_nic_alloc_buffer (struct ef4_nic*,TYPE_9__*,int,int ) ;
 int ef4_nic_free_buffer (struct ef4_nic*,TYPE_9__*) ;
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 struct falcon_board* falcon_board (struct ef4_nic*) ;
 TYPE_8__ falcon_i2c_bit_operations ;
 int falcon_probe_nvconfig (struct ef4_nic*) ;
 int falcon_probe_spi_devices (struct ef4_nic*) ;
 int falcon_stats_timer_func ;
 int i2c_bit_add_bus (TYPE_5__*) ;
 int i2c_del_adapter (TYPE_5__*) ;
 int kfree (struct falcon_nic_data*) ;
 struct falcon_nic_data* kzalloc (int,int ) ;
 int memset (TYPE_5__*,int ,int) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int ,int ,int ) ;
 int netif_err (struct ef4_nic*,int ,int ,char*) ;
 struct pci_dev* pci_dev_get (TYPE_4__*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int probe ;
 int strlcpy (int ,char*,int) ;
 int stub1 (struct ef4_nic*) ;
 int timer_setup (int *,int ,int ) ;
 scalar_t__ virt_to_phys (int ) ;

__attribute__((used)) static int falcon_probe_nic(struct ef4_nic *efx)
{
 struct falcon_nic_data *nic_data;
 struct falcon_board *board;
 int rc;

 efx->primary = efx;


 nic_data = kzalloc(sizeof(*nic_data), GFP_KERNEL);
 if (!nic_data)
  return -ENOMEM;
 efx->nic_data = nic_data;
 nic_data->efx = efx;

 rc = -ENODEV;

 if (ef4_farch_fpga_ver(efx) != 0) {
  netif_err(efx, probe, efx->net_dev,
     "Falcon FPGA not supported\n");
  goto fail1;
 }

 if (ef4_nic_rev(efx) <= EF4_REV_FALCON_A1) {
  ef4_oword_t nic_stat;
  struct pci_dev *dev;
  u8 pci_rev = efx->pci_dev->revision;

  if ((pci_rev == 0xff) || (pci_rev == 0)) {
   netif_err(efx, probe, efx->net_dev,
      "Falcon rev A0 not supported\n");
   goto fail1;
  }
  ef4_reado(efx, &nic_stat, FR_AB_NIC_STAT);
  if (EF4_OWORD_FIELD(nic_stat, FRF_AB_STRAP_10G) == 0) {
   netif_err(efx, probe, efx->net_dev,
      "Falcon rev A1 1G not supported\n");
   goto fail1;
  }
  if (EF4_OWORD_FIELD(nic_stat, FRF_AA_STRAP_PCIE) == 0) {
   netif_err(efx, probe, efx->net_dev,
      "Falcon rev A1 PCI-X not supported\n");
   goto fail1;
  }

  dev = pci_dev_get(efx->pci_dev);
  while ((dev = pci_get_device(PCI_VENDOR_ID_SOLARFLARE,
          PCI_DEVICE_ID_SOLARFLARE_SFC4000A_1,
          dev))) {
   if (dev->bus == efx->pci_dev->bus &&
       dev->devfn == efx->pci_dev->devfn + 1) {
    nic_data->pci_dev2 = dev;
    break;
   }
  }
  if (!nic_data->pci_dev2) {
   netif_err(efx, probe, efx->net_dev,
      "failed to find secondary function\n");
   rc = -ENODEV;
   goto fail2;
  }
 }


 rc = __falcon_reset_hw(efx, RESET_TYPE_ALL);
 if (rc) {
  netif_err(efx, probe, efx->net_dev, "failed to reset NIC\n");
  goto fail3;
 }


 rc = ef4_nic_alloc_buffer(efx, &efx->irq_status, sizeof(ef4_oword_t),
      GFP_KERNEL);
 if (rc)
  goto fail4;
 BUG_ON(efx->irq_status.dma_addr & 0x0f);

 netif_dbg(efx, probe, efx->net_dev,
    "INT_KER at %llx (virt %p phys %llx)\n",
    (u64)efx->irq_status.dma_addr,
    efx->irq_status.addr,
    (u64)virt_to_phys(efx->irq_status.addr));

 falcon_probe_spi_devices(efx);


 rc = falcon_probe_nvconfig(efx);
 if (rc) {
  if (rc == -EINVAL)
   netif_err(efx, probe, efx->net_dev, "NVRAM is invalid\n");
  goto fail5;
 }

 efx->max_channels = (ef4_nic_rev(efx) <= EF4_REV_FALCON_A1 ? 4 :
        EF4_MAX_CHANNELS);
 efx->max_tx_channels = efx->max_channels;
 efx->timer_quantum_ns = 4968;
 efx->timer_max_ns = efx->type->timer_period_max *
       efx->timer_quantum_ns;


 board = falcon_board(efx);
 board->i2c_adap.owner = THIS_MODULE;
 board->i2c_data = falcon_i2c_bit_operations;
 board->i2c_data.data = efx;
 board->i2c_adap.algo_data = &board->i2c_data;
 board->i2c_adap.dev.parent = &efx->pci_dev->dev;
 strlcpy(board->i2c_adap.name, "SFC4000 GPIO",
  sizeof(board->i2c_adap.name));
 rc = i2c_bit_add_bus(&board->i2c_adap);
 if (rc)
  goto fail5;

 rc = falcon_board(efx)->type->init(efx);
 if (rc) {
  netif_err(efx, probe, efx->net_dev,
     "failed to initialise board\n");
  goto fail6;
 }

 nic_data->stats_disable_count = 1;
 timer_setup(&nic_data->stats_timer, falcon_stats_timer_func, 0);

 return 0;

 fail6:
 i2c_del_adapter(&board->i2c_adap);
 memset(&board->i2c_adap, 0, sizeof(board->i2c_adap));
 fail5:
 ef4_nic_free_buffer(efx, &efx->irq_status);
 fail4:
 fail3:
 if (nic_data->pci_dev2) {
  pci_dev_put(nic_data->pci_dev2);
  nic_data->pci_dev2 = ((void*)0);
 }
 fail2:
 fail1:
 kfree(efx->nic_data);
 return rc;
}
