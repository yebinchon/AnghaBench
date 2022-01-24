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
struct mantis_pci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_DMA_CTL ; 
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC1 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct mantis_pci *mantis)
{
	int err;

	FUNC0(MANTIS_DEBUG, 1, "Mantis DMA init");
	err = FUNC1(mantis);
	if (err < 0) {
		FUNC0(MANTIS_ERROR, 1, "Error allocating DMA buffer");

		/* Stop RISC Engine */
		FUNC2(0, MANTIS_DMA_CTL);

		return err;
	}

	return 0;
}