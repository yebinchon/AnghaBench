#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct brcmf_sdio_dev {int irq_en; int /*<<< orphan*/  irq_en_lock; TYPE_3__* settings; scalar_t__ oob_irq_requested; } ;
struct brcmf_sdio {int /*<<< orphan*/  ipend; struct brcmf_sdio_dev* sdiodev; } ;
struct TYPE_4__ {int /*<<< orphan*/  oob_irq_nr; } ;
struct TYPE_5__ {TYPE_1__ sdio; } ;
struct TYPE_6__ {TYPE_2__ bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct brcmf_sdio *bus)
{
	struct brcmf_sdio_dev *sdiodev;
	unsigned long flags;

	sdiodev = bus->sdiodev;
	if (sdiodev->oob_irq_requested) {
		FUNC2(&sdiodev->irq_en_lock, flags);
		if (!sdiodev->irq_en && !FUNC0(&bus->ipend)) {
			FUNC1(sdiodev->settings->bus.sdio.oob_irq_nr);
			sdiodev->irq_en = true;
		}
		FUNC3(&sdiodev->irq_en_lock, flags);
	}
}