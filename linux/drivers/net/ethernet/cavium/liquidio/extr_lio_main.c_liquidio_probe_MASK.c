#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ device; int subsystem_vendor; int subsystem_device; int /*<<< orphan*/  devfn; TYPE_1__* bus; scalar_t__ vendor; int /*<<< orphan*/  dev; } ;
struct octeon_device_priv {int dummy; } ;
struct octeon_device {int ptp_enable; int subsystem_id; size_t octeon_id; int rx_pause; int tx_pause; TYPE_2__* pci_dev; int /*<<< orphan*/ * watchdog_task; int /*<<< orphan*/  adapter_refcount; int /*<<< orphan*/  msix_on; } ;
struct handshake {int /*<<< orphan*/  init; struct pci_dev* pci_dev; int /*<<< orphan*/  started; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LIO_FLAG_MSIX_ENABLED ; 
 scalar_t__ FUNC1 (struct octeon_device*) ; 
 scalar_t__ OCTEON_CN23XX_PF_VID ; 
 scalar_t__ OCTEON_CN66XX ; 
 scalar_t__ OCTEON_CN68XX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  first_stage ; 
 struct handshake* handshake ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,struct octeon_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  liquidio_watchdog ; 
 struct octeon_device* FUNC12 (scalar_t__,int) ; 
 scalar_t__ FUNC13 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(struct pci_dev *pdev,
	       const struct pci_device_id *ent __attribute__((unused)))
{
	struct octeon_device *oct_dev = NULL;
	struct handshake *hs;

	oct_dev = FUNC12(pdev->device,
					 sizeof(struct octeon_device_priv));
	if (!oct_dev) {
		FUNC7(&pdev->dev, "Unable to allocate device\n");
		return -ENOMEM;
	}

	if (pdev->device == OCTEON_CN23XX_PF_VID)
		oct_dev->msix_on = LIO_FLAG_MSIX_ENABLED;

	/* Enable PTP for 6XXX Device */
	if (((pdev->device == OCTEON_CN66XX) ||
	     (pdev->device == OCTEON_CN68XX)))
		oct_dev->ptp_enable = true;
	else
		oct_dev->ptp_enable = false;

	FUNC8(&pdev->dev, "Initializing device %x:%x.\n",
		 (u32)pdev->vendor, (u32)pdev->device);

	/* Assign octeon_device for this device to the private data area. */
	FUNC14(pdev, oct_dev);

	/* set linux specific device pointer */
	oct_dev->pci_dev = (void *)pdev;

	oct_dev->subsystem_id = pdev->subsystem_vendor |
		(pdev->subsystem_device << 16);

	hs = &handshake[oct_dev->octeon_id];
	FUNC9(&hs->init);
	FUNC9(&hs->started);
	hs->pci_dev = pdev;

	if (oct_dev->octeon_id == 0)
		/* first LiquidIO NIC is detected */
		FUNC5(&first_stage);

	if (FUNC13(oct_dev)) {
		FUNC5(&hs->init);
		FUNC11(pdev);
		return -ENOMEM;
	}

	if (FUNC1(oct_dev)) {
		u8 bus, device, function;

		if (FUNC4(oct_dev->adapter_refcount) == 1) {
			/* Each NIC gets one watchdog kernel thread.  The first
			 * PF (of each NIC) that gets pci_driver->probe()'d
			 * creates that thread.
			 */
			bus = pdev->bus->number;
			device = FUNC3(pdev->devfn);
			function = FUNC2(pdev->devfn);
			oct_dev->watchdog_task = FUNC10(
			    liquidio_watchdog, oct_dev,
			    "liowd/%02hhx:%02hhx.%hhx", bus, device, function);
			if (!FUNC0(oct_dev->watchdog_task)) {
				FUNC15(oct_dev->watchdog_task);
			} else {
				oct_dev->watchdog_task = NULL;
				FUNC7(&oct_dev->pci_dev->dev,
					"failed to create kernel_thread\n");
				FUNC11(pdev);
				return -1;
			}
		}
	}

	oct_dev->rx_pause = 1;
	oct_dev->tx_pause = 1;

	FUNC6(&oct_dev->pci_dev->dev, "Device is ready\n");

	return 0;
}