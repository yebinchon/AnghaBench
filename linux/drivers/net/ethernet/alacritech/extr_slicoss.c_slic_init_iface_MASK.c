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
struct slic_shmem {int /*<<< orphan*/  isr_paddr; } ;
struct TYPE_3__ {int pending; } ;
struct slic_device {int /*<<< orphan*/  napi; int /*<<< orphan*/  netdev; TYPE_2__* pdev; int /*<<< orphan*/  link_lock; int /*<<< orphan*/  speed; int /*<<< orphan*/  duplex; TYPE_1__ upr_list; struct slic_shmem shmem; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DUPLEX_UNKNOWN ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  SLIC_ICR_INT_OFF ; 
 int /*<<< orphan*/  SLIC_ICR_INT_ON ; 
 int /*<<< orphan*/  SLIC_REG_ICR ; 
 int /*<<< orphan*/  SLIC_REG_INTAGG ; 
 int /*<<< orphan*/  SLIC_REG_ISP ; 
 int /*<<< orphan*/  SLIC_REG_ISR ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct slic_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct slic_device*) ; 
 int FUNC13 (struct slic_device*) ; 
 int FUNC14 (struct slic_device*) ; 
 int FUNC15 (struct slic_device*) ; 
 int FUNC16 (struct slic_device*) ; 
 int FUNC17 (struct slic_device*) ; 
 int /*<<< orphan*/  slic_irq ; 
 int FUNC18 (struct slic_device*) ; 
 int FUNC19 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct slic_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct slic_device *sdev)
{
	struct slic_shmem *sm = &sdev->shmem;
	int err;

	sdev->upr_list.pending = false;

	err = FUNC15(sdev);
	if (err) {
		FUNC4(sdev->netdev, "failed to init shared memory\n");
		return err;
	}

	err = FUNC18(sdev);
	if (err) {
		FUNC4(sdev->netdev, "failed to load firmware\n");
		goto free_sm;
	}

	err = FUNC19(sdev);
	if (err) {
		FUNC4(sdev->netdev,
			   "failed to load firmware for receive sequencer\n");
		goto free_sm;
	}

	FUNC22(sdev, SLIC_REG_ICR, SLIC_ICR_INT_OFF);
	FUNC8(sdev);
	FUNC1(1);

	err = FUNC14(sdev);
	if (err) {
		FUNC4(sdev->netdev, "failed to init rx queue: %u\n", err);
		goto free_sm;
	}

	err = FUNC17(sdev);
	if (err) {
		FUNC4(sdev->netdev, "failed to init tx queue: %u\n", err);
		goto free_rxq;
	}

	err = FUNC16(sdev);
	if (err) {
		FUNC4(sdev->netdev, "failed to init status queue: %u\n",
			   err);
		goto free_txq;
	}

	FUNC22(sdev, SLIC_REG_ISP, FUNC0(sm->isr_paddr));
	FUNC3(&sdev->napi);
	/* disable irq mitigation */
	FUNC22(sdev, SLIC_REG_INTAGG, 0);
	FUNC22(sdev, SLIC_REG_ISR, 0);
	FUNC8(sdev);

	FUNC21(sdev);

	FUNC23(&sdev->link_lock);
	sdev->duplex = DUPLEX_UNKNOWN;
	sdev->speed = SPEED_UNKNOWN;
	FUNC24(&sdev->link_lock);

	FUNC20(sdev);

	err = FUNC6(sdev->pdev->irq, slic_irq, IRQF_SHARED, DRV_NAME,
			  sdev);
	if (err) {
		FUNC4(sdev->netdev, "failed to request irq: %u\n", err);
		goto disable_napi;
	}

	FUNC22(sdev, SLIC_REG_ICR, SLIC_ICR_INT_ON);
	FUNC8(sdev);
	/* request initial link status */
	err = FUNC13(sdev);
	if (err)
		FUNC5(sdev->netdev,
			    "failed to set initial link state: %u\n", err);
	return 0;

disable_napi:
	FUNC2(&sdev->napi);
	FUNC11(sdev);
free_txq:
	FUNC12(sdev);
free_rxq:
	FUNC9(sdev);
free_sm:
	FUNC10(sdev);
	FUNC7(sdev);

	return err;
}