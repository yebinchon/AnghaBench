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
typedef  scalar_t__ u32 ;
struct cx25821_dev {int dummy; } ;
struct cx25821_audio_dev {struct cx25821_dev* dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_A_INT_MSK ; 
 int /*<<< orphan*/  AUD_A_INT_STAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCI_INT_STAT ; 
 int /*<<< orphan*/  FUNC1 (struct cx25821_audio_dev*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct cx25821_audio_dev *chip = dev_id;
	struct cx25821_dev *dev = chip->dev;
	u32 status, pci_status;
	u32 audint_status, audint_mask;
	int loop, handled = 0;

	audint_status = FUNC2(AUD_A_INT_STAT);
	audint_mask = FUNC2(AUD_A_INT_MSK);
	status = FUNC2(PCI_INT_STAT);

	for (loop = 0; loop < 1; loop++) {
		status = FUNC2(PCI_INT_STAT);
		if (0 == status) {
			status = FUNC2(PCI_INT_STAT);
			audint_status = FUNC2(AUD_A_INT_STAT);
			audint_mask = FUNC2(AUD_A_INT_MSK);

			if (status) {
				handled = 1;
				FUNC3(PCI_INT_STAT, status);

				FUNC1(chip, audint_status,
						audint_mask);
				break;
			} else {
				goto out;
			}
		}

		handled = 1;
		FUNC3(PCI_INT_STAT, status);

		FUNC1(chip, audint_status, audint_mask);
	}

	pci_status = FUNC2(PCI_INT_STAT);

	if (handled)
		FUNC3(PCI_INT_STAT, pci_status);

out:
	return FUNC0(handled);
}