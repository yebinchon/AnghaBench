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
struct slic_upr {int dummy; } ;
struct slic_shmem_data {int /*<<< orphan*/  isr; } ;
struct slic_shmem {int /*<<< orphan*/  isr_paddr; struct slic_shmem_data* shmem_data; } ;
struct slic_oasis_eeprom {int /*<<< orphan*/  eeprom_code_size; int /*<<< orphan*/ * mac2; int /*<<< orphan*/ * mac; } ;
struct slic_mojave_eeprom {int /*<<< orphan*/  eeprom_code_size; int /*<<< orphan*/ * mac2; int /*<<< orphan*/ * mac; } ;
struct slic_device {scalar_t__ model; TYPE_2__* pdev; TYPE_1__* netdev; struct slic_shmem shmem; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  devfn; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLIC_EEPROM_SIZE ; 
 int /*<<< orphan*/  SLIC_ICR_INT_OFF ; 
 int SLIC_ISR_UPC ; 
 scalar_t__ SLIC_MODEL_OASIS ; 
 int /*<<< orphan*/  SLIC_REG_ICR ; 
 int /*<<< orphan*/  SLIC_REG_ISP ; 
 int /*<<< orphan*/  SLIC_REG_ISR ; 
 int /*<<< orphan*/  SLIC_UPR_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct slic_upr*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct slic_upr* FUNC10 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct slic_device*) ; 
 int FUNC13 (struct slic_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct slic_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct slic_device *sdev)
{
	unsigned int devfn = FUNC0(sdev->pdev->devfn);
	struct slic_shmem *sm = &sdev->shmem;
	struct slic_shmem_data *sm_data = sm->shmem_data;
	const unsigned int MAX_LOOPS = 5000;
	unsigned int codesize;
	unsigned char *eeprom;
	struct slic_upr *upr;
	unsigned int i = 0;
	dma_addr_t paddr;
	int err = 0;
	u8 *mac[2];

	eeprom = FUNC2(&sdev->pdev->dev, SLIC_EEPROM_SIZE,
				    &paddr, GFP_KERNEL);
	if (!eeprom)
		return -ENOMEM;

	FUNC14(sdev, SLIC_REG_ICR, SLIC_ICR_INT_OFF);
	/* setup ISP temporarily */
	FUNC14(sdev, SLIC_REG_ISP, FUNC8(sm->isr_paddr));

	err = FUNC13(sdev, SLIC_UPR_CONFIG, paddr);
	if (!err) {
		for (i = 0; i < MAX_LOOPS; i++) {
			if (FUNC7(sm_data->isr) & SLIC_ISR_UPC)
				break;
			FUNC9(1);
		}
		if (i == MAX_LOOPS) {
			FUNC1(&sdev->pdev->dev,
				"timed out while waiting for eeprom data\n");
			err = -ETIMEDOUT;
		}
		upr = FUNC10(sdev);
		FUNC5(upr);
	}

	FUNC14(sdev, SLIC_REG_ISP, 0);
	FUNC14(sdev, SLIC_REG_ISR, 0);
	FUNC12(sdev);

	if (err)
		goto free_eeprom;

	if (sdev->model == SLIC_MODEL_OASIS) {
		struct slic_oasis_eeprom *oee;

		oee = (struct slic_oasis_eeprom *)eeprom;
		mac[0] = oee->mac;
		mac[1] = oee->mac2;
		codesize = FUNC6(oee->eeprom_code_size);
	} else {
		struct slic_mojave_eeprom *mee;

		mee = (struct slic_mojave_eeprom *)eeprom;
		mac[0] = mee->mac;
		mac[1] = mee->mac2;
		codesize = FUNC6(mee->eeprom_code_size);
	}

	if (!FUNC11(eeprom, codesize)) {
		FUNC1(&sdev->pdev->dev, "invalid checksum in eeprom\n");
		err = -EINVAL;
		goto free_eeprom;
	}
	/* set mac address */
	FUNC4(sdev->netdev->dev_addr, mac[devfn]);
free_eeprom:
	FUNC3(&sdev->pdev->dev, SLIC_EEPROM_SIZE, eeprom, paddr);

	return err;
}