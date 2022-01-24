#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ intr_type; } ;
struct s2io_nic {int num_entries; int /*<<< orphan*/  name; TYPE_5__* pdev; TYPE_4__ config; TYPE_3__* s2io_entries; TYPE_2__* msix_info; int /*<<< orphan*/ * desc; TYPE_1__* entries; struct net_device* dev; } ;
struct net_device {char* name; } ;
struct TYPE_10__ {int /*<<< orphan*/  irq; } ;
struct TYPE_8__ {scalar_t__ in_use; scalar_t__ type; struct net_device* arg; } ;
struct TYPE_7__ {scalar_t__ data; scalar_t__ addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ERR_DBG ; 
 int /*<<< orphan*/  INFO_DBG ; 
 scalar_t__ INTA ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ MSIX_ALARM_TYPE ; 
 scalar_t__ MSIX_FLG ; 
 scalar_t__ MSIX_REGISTERED_SUCCESS ; 
 scalar_t__ MSIX_RING_TYPE ; 
 scalar_t__ MSI_X ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct s2io_nic*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC5 (struct s2io_nic*) ; 
 int /*<<< orphan*/  s2io_isr ; 
 int /*<<< orphan*/  s2io_msix_fifo_handle ; 
 int /*<<< orphan*/  s2io_msix_ring_handle ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct s2io_nic*) ; 

__attribute__((used)) static int FUNC8(struct s2io_nic *sp)
{
	int ret = 0;
	struct net_device *dev = sp->dev;
	int err = 0;

	if (sp->config.intr_type == MSI_X)
		ret = FUNC5(sp);
	if (ret) {
		FUNC0(ERR_DBG, "%s: Defaulting to INTA\n", dev->name);
		sp->config.intr_type = INTA;
	}

	/*
	 * Store the values of the MSIX table in
	 * the struct s2io_nic structure
	 */
	FUNC7(sp);

	/* After proper initialization of H/W, register ISR */
	if (sp->config.intr_type == MSI_X) {
		int i, msix_rx_cnt = 0;

		for (i = 0; i < sp->num_entries; i++) {
			if (sp->s2io_entries[i].in_use == MSIX_FLG) {
				if (sp->s2io_entries[i].type ==
				    MSIX_RING_TYPE) {
					FUNC6(sp->desc[i],
						sizeof(sp->desc[i]),
						"%s:MSI-X-%d-RX",
						dev->name, i);
					err = FUNC4(sp->entries[i].vector,
							  s2io_msix_ring_handle,
							  0,
							  sp->desc[i],
							  sp->s2io_entries[i].arg);
				} else if (sp->s2io_entries[i].type ==
					   MSIX_ALARM_TYPE) {
					FUNC6(sp->desc[i],
						sizeof(sp->desc[i]),
						"%s:MSI-X-%d-TX",
						dev->name, i);
					err = FUNC4(sp->entries[i].vector,
							  s2io_msix_fifo_handle,
							  0,
							  sp->desc[i],
							  sp->s2io_entries[i].arg);

				}
				/* if either data or addr is zero print it. */
				if (!(sp->msix_info[i].addr &&
				      sp->msix_info[i].data)) {
					FUNC0(ERR_DBG,
						  "%s @Addr:0x%llx Data:0x%llx\n",
						  sp->desc[i],
						  (unsigned long long)
						  sp->msix_info[i].addr,
						  (unsigned long long)
						  FUNC1(sp->msix_info[i].data));
				} else
					msix_rx_cnt++;
				if (err) {
					FUNC3(sp);

					FUNC0(ERR_DBG,
						  "%s:MSI-X-%d registration "
						  "failed\n", dev->name, i);

					FUNC0(ERR_DBG,
						  "%s: Defaulting to INTA\n",
						  dev->name);
					sp->config.intr_type = INTA;
					break;
				}
				sp->s2io_entries[i].in_use =
					MSIX_REGISTERED_SUCCESS;
			}
		}
		if (!err) {
			FUNC2("MSI-X-RX %d entries enabled\n", --msix_rx_cnt);
			FUNC0(INFO_DBG,
				  "MSI-X-TX entries enabled through alarm vector\n");
		}
	}
	if (sp->config.intr_type == INTA) {
		err = FUNC4(sp->pdev->irq, s2io_isr, IRQF_SHARED,
				  sp->name, dev);
		if (err) {
			FUNC0(ERR_DBG, "%s: ISR registration failed\n",
				  dev->name);
			return -1;
		}
	}
	return 0;
}