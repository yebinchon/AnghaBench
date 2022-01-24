#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int instr_processed; } ;
struct octeon_instr_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  instr_pending; TYPE_3__ stats; int /*<<< orphan*/  host_write_index; int /*<<< orphan*/  octeon_read_index; int /*<<< orphan*/  fill_cnt; } ;
struct octeon_device_priv {int /*<<< orphan*/  droq_tasklet; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* soft_reset ) (struct octeon_device*) ;int /*<<< orphan*/  (* free_mbox ) (struct octeon_device*) ;int /*<<< orphan*/  (* disable_interrupt ) (struct octeon_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* disable_io_queues ) (struct octeon_device*) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  work; } ;
struct TYPE_11__ {int /*<<< orphan*/  sriov_enabled; } ;
struct TYPE_15__ {int iq; int oq; } ;
struct octeon_device {int flags; size_t octeon_id; TYPE_6__* pci_dev; TYPE_4__ fn_list; int /*<<< orphan*/ * adapter_fw_state; TYPE_2__ nic_poll_work; TYPE_1__ sriov_info; TYPE_5__ io_qmask; int /*<<< orphan*/ * irq_name_storage; int /*<<< orphan*/ * msix_entries; int /*<<< orphan*/  vector; struct octeon_device* ioq_vector; int /*<<< orphan*/  num_msix_irqs; int /*<<< orphan*/  msix_on; struct octeon_instr_queue** instr_queue; int /*<<< orphan*/  status; int /*<<< orphan*/  app_mode; scalar_t__ priv; } ;
struct msix_entry {int /*<<< orphan*/  vector; } ;
struct handshake {int /*<<< orphan*/  started; int /*<<< orphan*/  started_ok; int /*<<< orphan*/  init; int /*<<< orphan*/  init_ok; int /*<<< orphan*/  pci_dev; } ;
struct TYPE_16__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CVM_DRV_INVALID_APP ; 
 int FW_IS_PRELOADED ; 
 int HZ ; 
 int LIO_FLAG_MSI_ENABLED ; 
 int MAX_OCTEON_DEVICES ; 
 int FUNC1 (struct octeon_device*) ; 
 int FUNC2 (struct octeon_device*) ; 
 int /*<<< orphan*/  OCTEON_ALL_INTR ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*) ; 
#define  OCT_DEV_BEGIN_STATE 144 
#define  OCT_DEV_CONSOLE_INIT_DONE 143 
#define  OCT_DEV_CORE_OK 142 
#define  OCT_DEV_DISPATCH_INIT_DONE 141 
#define  OCT_DEV_DROQ_INIT_DONE 140 
#define  OCT_DEV_HOST_OK 139 
#define  OCT_DEV_INSTR_QUEUE_INIT_DONE 138 
#define  OCT_DEV_INTR_SET_DONE 137 
#define  OCT_DEV_IN_RESET 136 
#define  OCT_DEV_IO_QUEUES_DONE 135 
#define  OCT_DEV_MBOX_SETUP_DONE 134 
#define  OCT_DEV_MSIX_ALLOC_VECTOR_DONE 133 
#define  OCT_DEV_PCI_ENABLE_DONE 132 
#define  OCT_DEV_PCI_MAP_DONE 131 
#define  OCT_DEV_RESP_LIST_INIT_DONE 130 
#define  OCT_DEV_RUNNING 129 
#define  OCT_DEV_SC_BUFF_POOL_INIT_DONE 128 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct octeon_device*) ; 
 struct handshake* handshake ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct octeon_device*,struct octeon_instr_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct octeon_device*) ; 
 int FUNC24 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC37 (int) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC41 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC43 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC45 (struct octeon_device*) ; 

__attribute__((used)) static void FUNC46(struct octeon_device *oct)
{
	int i, refcount;
	struct msix_entry *msix_entries;
	struct octeon_device_priv *oct_priv =
		(struct octeon_device_priv *)oct->priv;

	struct handshake *hs;

	switch (FUNC5(&oct->status)) {
	case OCT_DEV_RUNNING:
	case OCT_DEV_CORE_OK:

		/* No more instructions will be forwarded. */
		FUNC6(&oct->status, OCT_DEV_IN_RESET);

		oct->app_mode = CVM_DRV_INVALID_APP;
		FUNC9(&oct->pci_dev->dev, "Device state is now %s\n",
			FUNC14(&oct->status));

		FUNC37(HZ / 10);

		/* fallthrough */
	case OCT_DEV_HOST_OK:

		/* fallthrough */
	case OCT_DEV_CONSOLE_INIT_DONE:
		/* Remove any consoles */
		FUNC30(oct);

		/* fallthrough */
	case OCT_DEV_IO_QUEUES_DONE:
		if (FUNC17(oct))
			FUNC10(&oct->pci_dev->dev, "IQ had pending instructions\n");

		if (FUNC45(oct))
			FUNC10(&oct->pci_dev->dev, "There were pending requests\n");

		/* Disable the input and output queues now. No more packets will
		 * arrive from Octeon, but we should wait for all packet
		 * processing to finish.
		 */
		oct->fn_list.disable_io_queues(oct);

		if (FUNC18(oct))
			FUNC10(&oct->pci_dev->dev, "OQ had pending packets\n");

		/* Force all requests waiting to be fetched by OCTEON to
		 * complete.
		 */
		for (i = 0; i < FUNC1(oct); i++) {
			struct octeon_instr_queue *iq;

			if (!(oct->io_qmask.iq & FUNC0(i)))
				continue;
			iq = oct->instr_queue[i];

			if (FUNC5(&iq->instr_pending)) {
				FUNC38(&iq->lock);
				iq->fill_cnt = 0;
				iq->octeon_read_index = iq->host_write_index;
				iq->stats.instr_processed +=
					FUNC5(&iq->instr_pending);
				FUNC15(oct, iq, 0);
				FUNC39(&iq->lock);
			}
		}

		FUNC16(oct, 1);
		FUNC27(oct);
		FUNC28(oct);

	/* fallthrough */
	case OCT_DEV_INTR_SET_DONE:
		/* Disable interrupts  */
		oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

		if (oct->msix_on) {
			msix_entries = (struct msix_entry *)oct->msix_entries;
			for (i = 0; i < oct->num_msix_irqs - 1; i++) {
				if (oct->ioq_vector[i].vector) {
					/* clear the affinity_cpumask */
					FUNC12(
							msix_entries[i].vector,
							NULL);
					FUNC11(msix_entries[i].vector,
						 &oct->ioq_vector[i]);
					oct->ioq_vector[i].vector = 0;
				}
			}
			/* non-iov vector's argument is oct struct */
			FUNC11(msix_entries[i].vector, oct);

			FUNC35(oct->pci_dev);
			FUNC13(oct->msix_entries);
			oct->msix_entries = NULL;
		} else {
			/* Release the interrupt line */
			FUNC11(oct->pci_dev->irq, oct);

			if (oct->flags & LIO_FLAG_MSI_ENABLED)
				FUNC34(oct->pci_dev);
		}

		FUNC13(oct->irq_name_storage);
		oct->irq_name_storage = NULL;

	/* fallthrough */
	case OCT_DEV_MSIX_ALLOC_VECTOR_DONE:
		if (FUNC3(oct))
			FUNC25(oct);

	/* fallthrough */
	case OCT_DEV_MBOX_SETUP_DONE:
		if (FUNC3(oct))
			oct->fn_list.free_mbox(oct);

	/* fallthrough */
	case OCT_DEV_IN_RESET:
	case OCT_DEV_DROQ_INIT_DONE:
		/* Wait for any pending operations */
		FUNC19(100);
		for (i = 0; i < FUNC2(oct); i++) {
			if (!(oct->io_qmask.oq & FUNC0(i)))
				continue;
			FUNC21(oct, i);
		}

		/* Force any pending handshakes to complete */
		for (i = 0; i < MAX_OCTEON_DEVICES; i++) {
			hs = &handshake[i];

			if (hs->pci_dev) {
				handshake[oct->octeon_id].init_ok = 0;
				FUNC8(&handshake[oct->octeon_id].init);
				handshake[oct->octeon_id].started_ok = 0;
				FUNC8(&handshake[oct->octeon_id].started);
			}
		}

		/* fallthrough */
	case OCT_DEV_RESP_LIST_INIT_DONE:
		FUNC23(oct);

		/* fallthrough */
	case OCT_DEV_INSTR_QUEUE_INIT_DONE:
		for (i = 0; i < FUNC1(oct); i++) {
			if (!(oct->io_qmask.iq & FUNC0(i)))
				continue;
			FUNC22(oct, i);
		}
#ifdef CONFIG_PCI_IOV
		if (oct->sriov_info.sriov_enabled)
			pci_disable_sriov(oct->pci_dev);
#endif
		/* fallthrough */
	case OCT_DEV_SC_BUFF_POOL_INIT_DONE:
		FUNC26(oct);

		/* fallthrough */
	case OCT_DEV_DISPATCH_INIT_DONE:
		FUNC20(oct);
		FUNC7(&oct->nic_poll_work.work);

		/* fallthrough */
	case OCT_DEV_PCI_MAP_DONE:
		refcount = FUNC24(oct);

		/* Soft reset the octeon device before exiting.
		 * However, if fw was loaded from card (i.e. autoboot),
		 * perform an FLR instead.
		 * Implementation note: only soft-reset the device
		 * if it is a CN6XXX OR the LAST CN23XX device.
		 */
		if (FUNC5(oct->adapter_fw_state) == FW_IS_PRELOADED)
			FUNC29(oct);
		else if (FUNC4(oct) || !refcount)
			oct->fn_list.soft_reset(oct);

		FUNC31(oct, 0);
		FUNC31(oct, 1);

		/* fallthrough */
	case OCT_DEV_PCI_ENABLE_DONE:
		FUNC32(oct->pci_dev);
		/* Disable the device, releasing the PCI INT */
		FUNC33(oct->pci_dev);

		/* fallthrough */
	case OCT_DEV_BEGIN_STATE:
		/* Nothing to be done here either */
		break;
	}                       /* end switch (oct->status) */

	FUNC44(&oct_priv->droq_tasklet);
}