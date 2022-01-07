
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ (* enable_io_queues ) (struct octeon_device*) ;int (* enable_interrupt ) (struct octeon_device*,int ) ;scalar_t__ (* setup_mbox ) (struct octeon_device*) ;scalar_t__ (* setup_device_regs ) (struct octeon_device*) ;} ;
struct TYPE_5__ {int rings_per_vf; } ;
struct octeon_device {int rev_id; int num_oqs; int status; TYPE_3__** droq; TYPE_4__* pci_dev; TYPE_2__ fn_list; TYPE_1__ sriov_info; int app_mode; int chip_id; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int pkts_credit_reg; int max_count; } ;


 int CVM_DRV_NIC_APP ;
 int LIQUIDIO_VERSION ;
 int OCTEON_ALL_INTR ;
 int OCTEON_CN23XX_VF_VID ;
 int OCT_DEV_BEGIN_STATE ;
 int OCT_DEV_CORE_OK ;
 int OCT_DEV_DISPATCH_INIT_DONE ;
 int OCT_DEV_DROQ_INIT_DONE ;
 int OCT_DEV_HOST_OK ;
 int OCT_DEV_INSTR_QUEUE_INIT_DONE ;
 int OCT_DEV_INTR_SET_DONE ;
 int OCT_DEV_IO_QUEUES_DONE ;
 int OCT_DEV_MBOX_SETUP_DONE ;
 int OCT_DEV_MSIX_ALLOC_VECTOR_DONE ;
 int OCT_DEV_PCI_ENABLE_DONE ;
 int OCT_DEV_PCI_MAP_DONE ;
 int OCT_DEV_RESP_LIST_INIT_DONE ;
 int OCT_DEV_RUNNING ;
 int OCT_DEV_SC_BUFF_POOL_INIT_DONE ;
 int atomic_set (int *,int ) ;
 scalar_t__ cn23xx_octeon_pfvf_handshake (struct octeon_device*) ;
 scalar_t__ cn23xx_setup_octeon_vf_device (struct octeon_device*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ,int ) ;
 scalar_t__ liquidio_init_nic_module (struct octeon_device*) ;
 scalar_t__ octeon_allocate_ioq_vector (struct octeon_device*,int ) ;
 scalar_t__ octeon_init_dispatch_list (struct octeon_device*) ;
 scalar_t__ octeon_pci_os_setup (struct octeon_device*) ;
 scalar_t__ octeon_set_io_queues_off (struct octeon_device*) ;
 scalar_t__ octeon_setup_instr_queues (struct octeon_device*) ;
 scalar_t__ octeon_setup_interrupt (struct octeon_device*,int ) ;
 scalar_t__ octeon_setup_output_queues (struct octeon_device*) ;
 scalar_t__ octeon_setup_response_list (struct octeon_device*) ;
 scalar_t__ octeon_setup_sc_buffer_pool (struct octeon_device*) ;
 int pci_read_config_dword (TYPE_4__*,int,int*) ;
 scalar_t__ stub1 (struct octeon_device*) ;
 scalar_t__ stub2 (struct octeon_device*) ;
 int stub3 (struct octeon_device*,int ) ;
 int stub4 (struct octeon_device*,int ) ;
 scalar_t__ stub5 (struct octeon_device*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int octeon_device_init(struct octeon_device *oct)
{
 u32 rev_id;
 int j;

 atomic_set(&oct->status, OCT_DEV_BEGIN_STATE);




 if (octeon_pci_os_setup(oct))
  return 1;
 atomic_set(&oct->status, OCT_DEV_PCI_ENABLE_DONE);

 oct->chip_id = OCTEON_CN23XX_VF_VID;
 pci_read_config_dword(oct->pci_dev, 8, &rev_id);
 oct->rev_id = rev_id & 0xff;

 if (cn23xx_setup_octeon_vf_device(oct))
  return 1;

 atomic_set(&oct->status, OCT_DEV_PCI_MAP_DONE);

 oct->app_mode = CVM_DRV_NIC_APP;




 if (octeon_init_dispatch_list(oct))
  return 1;

 atomic_set(&oct->status, OCT_DEV_DISPATCH_INIT_DONE);

 if (octeon_set_io_queues_off(oct)) {
  dev_err(&oct->pci_dev->dev, "setting io queues off failed\n");
  return 1;
 }

 if (oct->fn_list.setup_device_regs(oct)) {
  dev_err(&oct->pci_dev->dev, "device registers configuration failed\n");
  return 1;
 }


 if (octeon_setup_sc_buffer_pool(oct)) {
  dev_err(&oct->pci_dev->dev, "sc buffer pool allocation failed\n");
  return 1;
 }
 atomic_set(&oct->status, OCT_DEV_SC_BUFF_POOL_INIT_DONE);


 if (octeon_setup_instr_queues(oct)) {
  dev_err(&oct->pci_dev->dev, "instruction queue initialization failed\n");
  return 1;
 }
 atomic_set(&oct->status, OCT_DEV_INSTR_QUEUE_INIT_DONE);




 if (octeon_setup_response_list(oct)) {
  dev_err(&oct->pci_dev->dev, "Response list allocation failed\n");
  return 1;
 }
 atomic_set(&oct->status, OCT_DEV_RESP_LIST_INIT_DONE);

 if (octeon_setup_output_queues(oct)) {
  dev_err(&oct->pci_dev->dev, "Output queue initialization failed\n");
  return 1;
 }
 atomic_set(&oct->status, OCT_DEV_DROQ_INIT_DONE);

 if (oct->fn_list.setup_mbox(oct)) {
  dev_err(&oct->pci_dev->dev, "Mailbox setup failed\n");
  return 1;
 }
 atomic_set(&oct->status, OCT_DEV_MBOX_SETUP_DONE);

 if (octeon_allocate_ioq_vector(oct, oct->sriov_info.rings_per_vf)) {
  dev_err(&oct->pci_dev->dev, "ioq vector allocation failed\n");
  return 1;
 }
 atomic_set(&oct->status, OCT_DEV_MSIX_ALLOC_VECTOR_DONE);

 dev_info(&oct->pci_dev->dev, "OCTEON_CN23XX VF Version: %s, %d ioqs\n",
   LIQUIDIO_VERSION, oct->sriov_info.rings_per_vf);


 if (octeon_setup_interrupt(oct, oct->sriov_info.rings_per_vf))
  return 1;

 atomic_set(&oct->status, OCT_DEV_INTR_SET_DONE);
 oct->fn_list.enable_interrupt(oct, OCTEON_ALL_INTR);

 if (cn23xx_octeon_pfvf_handshake(oct))
  return 1;






 oct->fn_list.enable_interrupt(oct, OCTEON_ALL_INTR);



 if (oct->fn_list.enable_io_queues(oct)) {
  dev_err(&oct->pci_dev->dev, "enabling io queues failed\n");
  return 1;
 }

 atomic_set(&oct->status, OCT_DEV_IO_QUEUES_DONE);

 atomic_set(&oct->status, OCT_DEV_HOST_OK);




 for (j = 0; j < oct->num_oqs; j++)
  writel(oct->droq[j]->max_count, oct->droq[j]->pkts_credit_reg);



 atomic_set(&oct->status, OCT_DEV_CORE_OK);

 atomic_set(&oct->status, OCT_DEV_RUNNING);

 if (liquidio_init_nic_module(oct))
  return 1;

 return 0;
}
