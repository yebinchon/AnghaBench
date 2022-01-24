#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int instr_processed; } ;
struct octeon_instr_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  instr_pending; TYPE_1__ stats; int /*<<< orphan*/  host_write_index; int /*<<< orphan*/  octeon_read_index; int /*<<< orphan*/  fill_cnt; } ;
struct octeon_device_priv {int /*<<< orphan*/  droq_tasklet; } ;
struct TYPE_12__ {int /*<<< orphan*/  work; } ;
struct TYPE_11__ {int iq; int oq; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* free_mbox ) (struct octeon_device*) ;int /*<<< orphan*/  (* disable_interrupt ) (struct octeon_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* disable_io_queues ) (struct octeon_device*) ;} ;
struct octeon_device {int num_msix_irqs; TYPE_5__* pci_dev; TYPE_4__ nic_poll_work; TYPE_3__ io_qmask; TYPE_2__ fn_list; int /*<<< orphan*/ * irq_name_storage; int /*<<< orphan*/ * msix_entries; TYPE_8__* ioq_vector; int /*<<< orphan*/  msix_on; struct octeon_instr_queue** instr_queue; int /*<<< orphan*/  status; int /*<<< orphan*/  app_mode; scalar_t__ priv; } ;
struct msix_entry {int /*<<< orphan*/  vector; } ;
struct TYPE_14__ {int /*<<< orphan*/  vector; } ;
struct TYPE_13__ {int /*<<< orphan*/  reset_fn; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CVM_DRV_INVALID_APP ; 
 int HZ ; 
 int FUNC1 (struct octeon_device*) ; 
 int FUNC2 (struct octeon_device*) ; 
 int /*<<< orphan*/  OCTEON_ALL_INTR ; 
#define  OCT_DEV_BEGIN_STATE 143 
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
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct octeon_device*,struct octeon_instr_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC35 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (struct octeon_device*) ; 

__attribute__((used)) static void FUNC39(struct octeon_device *oct)
{
	struct octeon_device_priv *oct_priv =
		(struct octeon_device_priv *)oct->priv;
	struct msix_entry *msix_entries;
	int i;

	switch (FUNC3(&oct->status)) {
	case OCT_DEV_RUNNING:
	case OCT_DEV_CORE_OK:
		/* No more instructions will be forwarded. */
		FUNC4(&oct->status, OCT_DEV_IN_RESET);

		oct->app_mode = CVM_DRV_INVALID_APP;
		FUNC7(&oct->pci_dev->dev, "Device state is now %s\n",
			FUNC12(&oct->status));

		FUNC31(HZ / 10);

		/* fallthrough */
	case OCT_DEV_HOST_OK:
		/* fallthrough */
	case OCT_DEV_IO_QUEUES_DONE:
		if (FUNC15(oct))
			FUNC8(&oct->pci_dev->dev, "IQ had pending instructions\n");

		if (FUNC38(oct))
			FUNC8(&oct->pci_dev->dev, "There were pending requests\n");

		/* Disable the input and output queues now. No more packets will
		 * arrive from Octeon, but we should wait for all packet
		 * processing to finish.
		 */
		oct->fn_list.disable_io_queues(oct);

		if (FUNC16(oct))
			FUNC8(&oct->pci_dev->dev, "OQ had pending packets\n");

		/* Force all requests waiting to be fetched by OCTEON to
		 * complete.
		 */
		for (i = 0; i < FUNC1(oct); i++) {
			struct octeon_instr_queue *iq;

			if (!(oct->io_qmask.iq & FUNC0(i)))
				continue;
			iq = oct->instr_queue[i];

			if (FUNC3(&iq->instr_pending)) {
				FUNC32(&iq->lock);
				iq->fill_cnt = 0;
				iq->octeon_read_index = iq->host_write_index;
				iq->stats.instr_processed +=
					FUNC3(&iq->instr_pending);
				FUNC13(oct, iq, 0);
				FUNC33(&iq->lock);
			}
		}

		FUNC14(oct, 1);
		FUNC24(oct);
		FUNC25(oct);

	/* fall through */
	case OCT_DEV_INTR_SET_DONE:
		/* Disable interrupts  */
		oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

		if (oct->msix_on) {
			msix_entries = (struct msix_entry *)oct->msix_entries;
			for (i = 0; i < oct->num_msix_irqs; i++) {
				if (oct->ioq_vector[i].vector) {
					FUNC10(
							msix_entries[i].vector,
							NULL);
					FUNC9(msix_entries[i].vector,
						 &oct->ioq_vector[i]);
					oct->ioq_vector[i].vector = 0;
				}
			}
			FUNC30(oct->pci_dev);
			FUNC11(oct->msix_entries);
			oct->msix_entries = NULL;
			FUNC11(oct->irq_name_storage);
			oct->irq_name_storage = NULL;
		}
		/* Soft reset the octeon device before exiting */
		if (oct->pci_dev->reset_fn)
			FUNC26(oct);
		else
			FUNC6(oct);

		/* fallthrough */
	case OCT_DEV_MSIX_ALLOC_VECTOR_DONE:
		FUNC22(oct);

		/* fallthrough */
	case OCT_DEV_MBOX_SETUP_DONE:
		oct->fn_list.free_mbox(oct);

		/* fallthrough */
	case OCT_DEV_IN_RESET:
	case OCT_DEV_DROQ_INIT_DONE:
		FUNC17(100);
		for (i = 0; i < FUNC2(oct); i++) {
			if (!(oct->io_qmask.oq & FUNC0(i)))
				continue;
			FUNC19(oct, i);
		}

		/* fallthrough */
	case OCT_DEV_RESP_LIST_INIT_DONE:
		FUNC21(oct);

		/* fallthrough */
	case OCT_DEV_INSTR_QUEUE_INIT_DONE:
		for (i = 0; i < FUNC1(oct); i++) {
			if (!(oct->io_qmask.iq & FUNC0(i)))
				continue;
			FUNC20(oct, i);
		}

		/* fallthrough */
	case OCT_DEV_SC_BUFF_POOL_INIT_DONE:
		FUNC23(oct);

		/* fallthrough */
	case OCT_DEV_DISPATCH_INIT_DONE:
		FUNC18(oct);
		FUNC5(&oct->nic_poll_work.work);

		/* fallthrough */
	case OCT_DEV_PCI_MAP_DONE:
		FUNC27(oct, 0);
		FUNC27(oct, 1);

		/* fallthrough */
	case OCT_DEV_PCI_ENABLE_DONE:
		FUNC28(oct->pci_dev);
		/* Disable the device, releasing the PCI INT */
		FUNC29(oct->pci_dev);

		/* fallthrough */
	case OCT_DEV_BEGIN_STATE:
		/* Nothing to be done here either */
		break;
	}

	FUNC37(&oct_priv->droq_tasklet);
}