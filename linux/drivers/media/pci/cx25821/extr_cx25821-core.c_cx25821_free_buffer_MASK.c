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
struct cx25821_dev {int /*<<< orphan*/  pci; } ;
struct TYPE_2__ {scalar_t__ size; int /*<<< orphan*/  dma; int /*<<< orphan*/  cpu; } ;
struct cx25821_buffer {TYPE_1__ risc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct cx25821_dev *dev, struct cx25821_buffer *buf)
{
	FUNC0(FUNC2());
	if (FUNC1(buf->risc.size == 0))
		return;
	FUNC4(dev->pci,
			buf->risc.size, buf->risc.cpu, buf->risc.dma);
	FUNC3(&buf->risc, 0, sizeof(buf->risc));
}