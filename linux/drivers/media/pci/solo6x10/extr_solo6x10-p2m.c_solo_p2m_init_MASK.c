#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct solo_p2m_dev {int /*<<< orphan*/  completion; int /*<<< orphan*/  mutex; } ;
struct solo_dev {int sdram_size; int sys_config; TYPE_1__* pdev; struct solo_p2m_dev* p2m_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SOLO_DMA_CTRL ; 
 int FUNC0 (int) ; 
 int SOLO_DMA_CTRL_READ_CLK_SELECT ; 
 int FUNC1 (int) ; 
 int SOLO_DMA_CTRL_SDRAM_CLK_INVERT ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int SOLO_NR_P2M ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int SOLO_P2M_CSC_16BIT_565 ; 
 int SOLO_P2M_DESC_INTR_OPT ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int SOLO_P2M_PCI_MASTER_MODE ; 
 int FUNC7 (struct solo_dev*) ; 
 int /*<<< orphan*/  SOLO_SYS_CFG ; 
 int SOLO_SYS_CFG_RESET ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct solo_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct solo_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 

int FUNC14(struct solo_dev *solo_dev)
{
	struct solo_p2m_dev *p2m_dev;
	int i;

	for (i = 0; i < SOLO_NR_P2M; i++) {
		p2m_dev = &solo_dev->p2m_dev[i];

		FUNC10(&p2m_dev->mutex);
		FUNC9(&p2m_dev->completion);

		FUNC13(solo_dev, FUNC5(i), 0);
		FUNC13(solo_dev, FUNC4(i),
			       SOLO_P2M_CSC_16BIT_565 |
			       SOLO_P2M_DESC_INTR_OPT |
			       FUNC6(0) |
			       SOLO_P2M_PCI_MASTER_MODE);
		FUNC11(solo_dev, FUNC3(i));
	}

	/* Find correct SDRAM size */
	for (solo_dev->sdram_size = 0, i = 2; i >= 0; i--) {
		FUNC13(solo_dev, SOLO_DMA_CTRL,
			       FUNC1(1) |
			       FUNC2(i) |
			       SOLO_DMA_CTRL_SDRAM_CLK_INVERT |
			       SOLO_DMA_CTRL_READ_CLK_SELECT |
			       FUNC0(1));

		FUNC13(solo_dev, SOLO_SYS_CFG, solo_dev->sys_config |
			       SOLO_SYS_CFG_RESET);
		FUNC13(solo_dev, SOLO_SYS_CFG, solo_dev->sys_config);

		switch (i) {
		case 2:
			if (FUNC12(solo_dev, 0x07ff0000, 0x00010000) ||
			    FUNC12(solo_dev, 0x05ff0000, 0x00010000))
				continue;
			break;

		case 1:
			if (FUNC12(solo_dev, 0x03ff0000, 0x00010000))
				continue;
			break;

		default:
			if (FUNC12(solo_dev, 0x01ff0000, 0x00010000))
				continue;
		}

		solo_dev->sdram_size = (32 << 20) << i;
		break;
	}

	if (!solo_dev->sdram_size) {
		FUNC8(&solo_dev->pdev->dev, "Error detecting SDRAM size\n");
		return -EIO;
	}

	if (FUNC7(solo_dev) > solo_dev->sdram_size) {
		FUNC8(&solo_dev->pdev->dev,
			"SDRAM is not large enough (%u < %u)\n",
			solo_dev->sdram_size, FUNC7(solo_dev));
		return -EIO;
	}

	return 0;
}