#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {char* name; unsigned int rq_count; unsigned int wq_count; unsigned int intr_count; TYPE_3__* msix; TYPE_2__* msix_entry; struct net_device* napi; TYPE_1__* pdev; int /*<<< orphan*/  vdev; struct net_device* netdev; } ;
struct enic {char* name; unsigned int rq_count; unsigned int wq_count; unsigned int intr_count; TYPE_3__* msix; TYPE_2__* msix_entry; struct enic* napi; TYPE_1__* pdev; int /*<<< orphan*/  vdev; struct enic* netdev; } ;
struct TYPE_6__ {char* devname; int requested; struct net_device* devid; void* isr; } ;
struct TYPE_5__ {int /*<<< orphan*/  vector; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
#define  VNIC_DEV_INTR_MODE_INTX 130 
#define  VNIC_DEV_INTR_MODE_MSI 129 
#define  VNIC_DEV_INTR_MODE_MSIX 128 
 int FUNC1 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 void* enic_isr_legacy ; 
 void* enic_isr_msi ; 
 void* enic_isr_msix ; 
 void* enic_isr_msix_err ; 
 void* enic_isr_msix_notify ; 
 unsigned int FUNC3 (struct net_device*) ; 
 unsigned int FUNC4 (struct net_device*) ; 
 unsigned int FUNC5 (struct net_device*,unsigned int) ; 
 unsigned int FUNC6 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct enic *enic)
{
	struct net_device *netdev = enic->netdev;
	unsigned int i, intr;
	int err = 0;

	FUNC7(enic);
	switch (FUNC10(enic->vdev)) {

	case VNIC_DEV_INTR_MODE_INTX:

		err = FUNC8(enic->pdev->irq, enic_isr_legacy,
			IRQF_SHARED, netdev->name, netdev);
		break;

	case VNIC_DEV_INTR_MODE_MSI:

		err = FUNC8(enic->pdev->irq, enic_isr_msi,
			0, netdev->name, enic);
		break;

	case VNIC_DEV_INTR_MODE_MSIX:

		for (i = 0; i < enic->rq_count; i++) {
			intr = FUNC5(enic, i);
			FUNC9(enic->msix[intr].devname,
				sizeof(enic->msix[intr].devname),
				"%s-rx-%u", netdev->name, i);
			enic->msix[intr].isr = enic_isr_msix;
			enic->msix[intr].devid = &enic->napi[i];
		}

		for (i = 0; i < enic->wq_count; i++) {
			int wq = FUNC1(enic, i);

			intr = FUNC6(enic, i);
			FUNC9(enic->msix[intr].devname,
				sizeof(enic->msix[intr].devname),
				"%s-tx-%u", netdev->name, i);
			enic->msix[intr].isr = enic_isr_msix;
			enic->msix[intr].devid = &enic->napi[wq];
		}

		intr = FUNC3(enic);
		FUNC9(enic->msix[intr].devname,
			sizeof(enic->msix[intr].devname),
			"%s-err", netdev->name);
		enic->msix[intr].isr = enic_isr_msix_err;
		enic->msix[intr].devid = enic;

		intr = FUNC4(enic);
		FUNC9(enic->msix[intr].devname,
			sizeof(enic->msix[intr].devname),
			"%s-notify", netdev->name);
		enic->msix[intr].isr = enic_isr_msix_notify;
		enic->msix[intr].devid = enic;

		for (i = 0; i < FUNC0(enic->msix); i++)
			enic->msix[i].requested = 0;

		for (i = 0; i < enic->intr_count; i++) {
			err = FUNC8(enic->msix_entry[i].vector,
				enic->msix[i].isr, 0,
				enic->msix[i].devname,
				enic->msix[i].devid);
			if (err) {
				FUNC2(enic);
				break;
			}
			enic->msix[i].requested = 1;
		}

		break;

	default:
		break;
	}

	return err;
}