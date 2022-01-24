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
struct platform_device {int dummy; } ;
struct channel_info {int dummy; } ;
struct c8sectpfei {int tsin_count; scalar_t__ c8sectpfeclk; scalar_t__ io; int /*<<< orphan*/  dev; struct channel_info** channel_data; int /*<<< orphan*/ * c8sectpfe; int /*<<< orphan*/  fw_ack; } ;

/* Variables and functions */
 scalar_t__ DMA_CPU_RUN ; 
 scalar_t__ SYS_INPUT_CLKEN ; 
 scalar_t__ SYS_OTHER_CLKEN ; 
 int /*<<< orphan*/  FUNC0 (struct c8sectpfei*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct c8sectpfei*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct c8sectpfei*,struct channel_info*) ; 
 struct c8sectpfei* FUNC5 (struct platform_device*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct c8sectpfei *fei = FUNC5(pdev);
	struct channel_info *channel;
	int i;

	FUNC7(&fei->fw_ack);

	FUNC1(fei->c8sectpfe[0], fei);

	/*
	 * Now loop through and un-configure each of the InputBlock resources
	 */
	for (i = 0; i < fei->tsin_count; i++) {
		channel = fei->channel_data[i];
		FUNC4(fei, channel);
	}

	FUNC0(fei);

	FUNC3(fei->dev, "Stopping memdma SLIM core\n");
	if (FUNC6(fei->io + DMA_CPU_RUN))
		FUNC8(0x0,  fei->io + DMA_CPU_RUN);

	/* unclock all internal IP's */
	if (FUNC6(fei->io + SYS_INPUT_CLKEN))
		FUNC8(0, fei->io + SYS_INPUT_CLKEN);

	if (FUNC6(fei->io + SYS_OTHER_CLKEN))
		FUNC8(0, fei->io + SYS_OTHER_CLKEN);

	if (fei->c8sectpfeclk)
		FUNC2(fei->c8sectpfeclk);

	return 0;
}