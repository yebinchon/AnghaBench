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
struct TYPE_4__ {int /*<<< orphan*/ * priv_data; } ;
struct saa7134_dev {int has_remote; int /*<<< orphan*/  name; TYPE_3__* remote; TYPE_2__* mops; TYPE_1__ dmasound; scalar_t__ insuspend; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int mask_keydown; int mask_keyup; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* irq_ts_done ) (struct saa7134_dev*,unsigned long) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SAA7134_IRQ1 ; 
 int /*<<< orphan*/  SAA7134_IRQ2 ; 
 int /*<<< orphan*/  SAA7134_IRQ2_INTE_GPIO16_N ; 
 int /*<<< orphan*/  SAA7134_IRQ2_INTE_GPIO16_P ; 
 int /*<<< orphan*/  SAA7134_IRQ2_INTE_GPIO18_N ; 
 int /*<<< orphan*/  SAA7134_IRQ2_INTE_GPIO18_P ; 
 int /*<<< orphan*/  SAA7134_IRQ2_INTE_PE ; 
 int /*<<< orphan*/  SAA7134_IRQ_REPORT ; 
 unsigned long SAA7134_IRQ_REPORT_DONE_RA0 ; 
 unsigned long SAA7134_IRQ_REPORT_DONE_RA2 ; 
 unsigned long SAA7134_IRQ_REPORT_DONE_RA3 ; 
 unsigned long SAA7134_IRQ_REPORT_GPIO16 ; 
 unsigned long SAA7134_IRQ_REPORT_GPIO18 ; 
 unsigned long SAA7134_IRQ_REPORT_INTL ; 
 unsigned long SAA7134_IRQ_REPORT_PE ; 
 unsigned long SAA7134_IRQ_REPORT_RDCAP ; 
 int /*<<< orphan*/  SAA7134_IRQ_STATUS ; 
#define  SAA7134_REMOTE_GPIO 129 
#define  SAA7134_REMOTE_I2C 128 
 scalar_t__ FUNC1 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ irq_debug ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7134_dev*,int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct saa7134_dev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7134_dev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct saa7134_dev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct saa7134_dev*,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *dev_id)
{
	struct saa7134_dev *dev = (struct saa7134_dev*) dev_id;
	unsigned long report,status;
	int loop, handled = 0;

	if (dev->insuspend)
		goto out;

	for (loop = 0; loop < 10; loop++) {
		report = FUNC11(SAA7134_IRQ_REPORT);
		status = FUNC11(SAA7134_IRQ_STATUS);

		/* If dmasound support is active and we get a sound report,
		 * mask out the report and let the saa7134-alsa module deal
		 * with it */
		if ((report & SAA7134_IRQ_REPORT_DONE_RA3) &&
			(dev->dmasound.priv_data != NULL) )
		{
			FUNC2(2, "preserving DMA sound interrupt\n");
			report &= ~SAA7134_IRQ_REPORT_DONE_RA3;
		}

		if (0 == report) {
			FUNC2(2, "no (more) work\n");
			goto out;
		}

		handled = 1;
		FUNC12(SAA7134_IRQ_REPORT,report);
		if (irq_debug)
			FUNC4(dev,loop,report,status);


		if ((report & SAA7134_IRQ_REPORT_RDCAP) ||
			(report & SAA7134_IRQ_REPORT_INTL))
				FUNC9(dev);


		if ((report & SAA7134_IRQ_REPORT_DONE_RA0) &&
		    (status & 0x60) == 0)
			FUNC8(dev,status);

		if ((report & SAA7134_IRQ_REPORT_DONE_RA0) &&
		    (status & 0x40) == 0x40)
			FUNC7(dev,status);

		if ((report & SAA7134_IRQ_REPORT_DONE_RA2) &&
		    FUNC1(dev)) {
			if (dev->mops->irq_ts_done != NULL)
				dev->mops->irq_ts_done(dev, status);
			else
				FUNC6(dev, status);
		}

		if (report & SAA7134_IRQ_REPORT_GPIO16) {
			switch (dev->has_remote) {
				case SAA7134_REMOTE_GPIO:
					if (!dev->remote)
						break;
					if  (dev->remote->mask_keydown & 0x10000) {
						FUNC5(dev);
					}
					break;

				case SAA7134_REMOTE_I2C:
					break;			/* FIXME: invoke I2C get_key() */

				default:			/* GPIO16 not used by IR remote */
					break;
			}
		}

		if (report & SAA7134_IRQ_REPORT_GPIO18) {
			switch (dev->has_remote) {
				case SAA7134_REMOTE_GPIO:
					if (!dev->remote)
						break;
					if ((dev->remote->mask_keydown & 0x40000) ||
					    (dev->remote->mask_keyup & 0x40000)) {
						FUNC5(dev);
					}
					break;

				case SAA7134_REMOTE_I2C:
					break;			/* FIXME: invoke I2C get_key() */

				default:			/* GPIO18 not used by IR remote */
					break;
			}
		}
	}

	if (10 == loop) {
		FUNC4(dev,loop,report,status);
		if (report & SAA7134_IRQ_REPORT_PE) {
			/* disable all parity error */
			FUNC3("%s/irq: looping -- clearing PE (parity error!) enable bit\n",
				dev->name);
			FUNC10(SAA7134_IRQ2,SAA7134_IRQ2_INTE_PE);
		} else if (report & SAA7134_IRQ_REPORT_GPIO16) {
			/* disable gpio16 IRQ */
			FUNC3("%s/irq: looping -- clearing GPIO16 enable bit\n",
				dev->name);
			FUNC10(SAA7134_IRQ2, SAA7134_IRQ2_INTE_GPIO16_P);
			FUNC10(SAA7134_IRQ2, SAA7134_IRQ2_INTE_GPIO16_N);
		} else if (report & SAA7134_IRQ_REPORT_GPIO18) {
			/* disable gpio18 IRQs */
			FUNC3("%s/irq: looping -- clearing GPIO18 enable bit\n",
				dev->name);
			FUNC10(SAA7134_IRQ2, SAA7134_IRQ2_INTE_GPIO18_P);
			FUNC10(SAA7134_IRQ2, SAA7134_IRQ2_INTE_GPIO18_N);
		} else {
			/* disable all irqs */
			FUNC3("%s/irq: looping -- clearing all enable bits\n",
				dev->name);
			FUNC12(SAA7134_IRQ1,0);
			FUNC12(SAA7134_IRQ2,0);
		}
	}

 out:
	return FUNC0(handled);
}