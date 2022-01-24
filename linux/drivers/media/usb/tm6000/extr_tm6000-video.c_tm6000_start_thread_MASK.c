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
struct tm6000_dmaqueue {int /*<<< orphan*/  wq; int /*<<< orphan*/  ini_jiffies; scalar_t__ frame; } ;
struct TYPE_2__ {int num_bufs; int /*<<< orphan*/ * urb; } ;
struct tm6000_core {TYPE_1__ isoc_ctl; struct tm6000_dmaqueue vidq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tm6000_core*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tm6000_core *dev)
{
	struct tm6000_dmaqueue *dma_q = &dev->vidq;
	int i;

	dma_q->frame = 0;
	dma_q->ini_jiffies = jiffies;

	FUNC0(&dma_q->wq);

	/* submit urbs and enables IRQ */
	for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
		int rc = FUNC3(dev->isoc_ctl.urb[i], GFP_ATOMIC);
		if (rc) {
			FUNC1("submit of urb %i failed (error=%i)\n", i,
				   rc);
			FUNC2(dev);
			return rc;
		}
	}

	return 0;
}