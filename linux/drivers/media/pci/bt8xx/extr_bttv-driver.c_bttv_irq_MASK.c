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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  nr; } ;
struct bttv {int i2c_done; int /*<<< orphan*/  irq_me; int /*<<< orphan*/  irq_total; TYPE_1__ c; int /*<<< orphan*/  mute; int /*<<< orphan*/  audio_input; scalar_t__ opt_automute; int /*<<< orphan*/  i2c_queue; scalar_t__ remote; int /*<<< orphan*/  field_count; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_DSTATUS ; 
 int BT848_DSTATUS_HLOC ; 
 int BT848_DSTATUS_NUML ; 
 int BT848_DSTATUS_PRES ; 
 int BT848_INT_FDSR ; 
 int BT848_INT_FMTCHG ; 
 int BT848_INT_GPINT ; 
 int BT848_INT_HLOCK ; 
 int BT848_INT_I2CDONE ; 
 int /*<<< orphan*/  BT848_INT_MASK ; 
 int BT848_INT_OCERR ; 
 int BT848_INT_RISCI ; 
 int BT848_INT_SCERR ; 
 int /*<<< orphan*/  BT848_INT_STAT ; 
 int BT848_INT_VPRES ; 
 int BT848_INT_VSYNC ; 
 int /*<<< orphan*/  BT848_RISC_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ bttv_debug ; 
 int /*<<< orphan*/  FUNC3 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC4 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC5 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC6 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ fdsr ; 
 scalar_t__ irq_debug ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *dev_id)
{
	u32 stat,astat;
	u32 dstat;
	int count;
	struct bttv *btv;
	int handled = 0;

	btv=(struct bttv *)dev_id;

	count=0;
	while (1) {
		/* get/clear interrupt status bits */
		stat=FUNC2(BT848_INT_STAT);
		astat=stat&FUNC2(BT848_INT_MASK);
		if (!astat)
			break;
		handled = 1;
		FUNC9(stat,BT848_INT_STAT);

		/* get device status bits */
		dstat=FUNC2(BT848_DSTATUS);

		if (irq_debug) {
			FUNC11("%d: irq loop=%d fc=%d riscs=%x, riscc=%08x, ",
				 btv->c.nr, count, btv->field_count,
				 stat>>28, FUNC2(BT848_RISC_COUNT));
			FUNC7(stat,astat);
			if (stat & BT848_INT_HLOCK)
				FUNC10("   HLOC => %s",
					dstat & BT848_DSTATUS_HLOC
					? "yes" : "no");
			if (stat & BT848_INT_VPRES)
				FUNC10("   PRES => %s",
					dstat & BT848_DSTATUS_PRES
					? "yes" : "no");
			if (stat & BT848_INT_FMTCHG)
				FUNC10("   NUML => %s",
					dstat & BT848_DSTATUS_NUML
					? "625" : "525");
			FUNC10("\n");
		}

		if (astat&BT848_INT_VSYNC)
			btv->field_count++;

		if ((astat & BT848_INT_GPINT) && btv->remote) {
			FUNC3(btv);
		}

		if (astat & BT848_INT_I2CDONE) {
			btv->i2c_done = stat;
			FUNC14(&btv->i2c_queue);
		}

		if ((astat & BT848_INT_RISCI)  &&  (stat & (4<<28)))
			FUNC4(btv);

		if ((astat & BT848_INT_RISCI)  &&  (stat & (2<<28)))
			FUNC6(btv);

		if ((astat & BT848_INT_RISCI)  &&  (stat & (1<<28)))
			FUNC5(btv);

		if ((astat & BT848_INT_HLOCK)  &&  btv->opt_automute)
			/* trigger automute */
			FUNC1(btv, btv->audio_input, btv->mute);

		if (astat & (BT848_INT_SCERR|BT848_INT_OCERR)) {
			FUNC13("%d: %s%s @ %08x,",
				btv->c.nr,
				(astat & BT848_INT_SCERR) ? "SCERR" : "",
				(astat & BT848_INT_OCERR) ? "OCERR" : "",
				FUNC2(BT848_RISC_COUNT));
			FUNC7(stat,astat);
			FUNC10("\n");
			if (bttv_debug)
				FUNC8(btv);
		}
		if (fdsr && astat & BT848_INT_FDSR) {
			FUNC13("%d: FDSR @ %08x\n",
				btv->c.nr, FUNC2(BT848_RISC_COUNT));
			if (bttv_debug)
				FUNC8(btv);
		}

		count++;
		if (count > 4) {

			if (count > 8 || !(astat & BT848_INT_GPINT)) {
				FUNC9(0, BT848_INT_MASK);

				FUNC12("%d: IRQ lockup, cleared int mask [",
				       btv->c.nr);
			} else {
				FUNC12("%d: IRQ lockup, clearing GPINT from int mask [",
				       btv->c.nr);

				FUNC9(FUNC2(BT848_INT_MASK) & (-1 ^ BT848_INT_GPINT),
						BT848_INT_MASK);
			}

			FUNC7(stat,astat);

			FUNC10("]\n");
		}
	}
	btv->irq_total++;
	if (handled)
		btv->irq_me++;
	return FUNC0(handled);
}