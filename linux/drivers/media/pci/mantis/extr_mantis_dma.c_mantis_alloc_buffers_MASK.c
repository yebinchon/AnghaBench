#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mantis_pci {void* risc_cpu; scalar_t__ risc_dma; int /*<<< orphan*/  pdev; void* buf_cpu; scalar_t__ buf_dma; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MANTIS_BUF_SIZE ; 
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  MANTIS_RISC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mantis_pci*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static inline int FUNC3(struct mantis_pci *mantis)
{
	if (!mantis->buf_cpu) {
		mantis->buf_cpu = FUNC2(mantis->pdev,
						       MANTIS_BUF_SIZE,
						       &mantis->buf_dma);
		if (!mantis->buf_cpu) {
			FUNC0(MANTIS_ERROR, 1,
				"DMA buffer allocation failed");

			goto err;
		}
		FUNC0(MANTIS_ERROR, 1,
			"DMA=0x%lx cpu=0x%p size=%d",
			(unsigned long) mantis->buf_dma,
			mantis->buf_cpu, MANTIS_BUF_SIZE);
	}
	if (!mantis->risc_cpu) {
		mantis->risc_cpu = FUNC2(mantis->pdev,
							MANTIS_RISC_SIZE,
							&mantis->risc_dma);

		if (!mantis->risc_cpu) {
			FUNC0(MANTIS_ERROR, 1,
				"RISC program allocation failed");

			FUNC1(mantis);

			goto err;
		}
		FUNC0(MANTIS_ERROR, 1,
			"RISC=0x%lx cpu=0x%p size=%lx",
			(unsigned long) mantis->risc_dma,
			mantis->risc_cpu, MANTIS_RISC_SIZE);
	}

	return 0;
err:
	FUNC0(MANTIS_ERROR, 1, "Out of memory (?) .....");
	return -ENOMEM;
}