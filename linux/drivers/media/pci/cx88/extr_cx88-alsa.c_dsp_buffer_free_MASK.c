#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cx88_riscmem {int /*<<< orphan*/  dma; scalar_t__ cpu; int /*<<< orphan*/  size; } ;
struct cx88_audio_dev {TYPE_1__* buf; int /*<<< orphan*/  pci; int /*<<< orphan*/  dma_size; } ;
struct TYPE_3__ {struct cx88_riscmem risc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx88_audio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct cx88_audio_dev *chip)
{
	struct cx88_riscmem *risc = &chip->buf->risc;

	FUNC0(!chip->dma_size);

	FUNC3(2, "Freeing buffer\n");
	FUNC2(chip);
	FUNC1(chip->buf);
	if (risc->cpu)
		FUNC5(chip->pci, risc->size,
				    risc->cpu, risc->dma);
	FUNC4(chip->buf);

	chip->buf = NULL;

	return 0;
}