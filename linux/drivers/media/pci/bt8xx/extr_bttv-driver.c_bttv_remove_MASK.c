#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct v4l2_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_9__ {size_t nr; size_t type; int /*<<< orphan*/  v4l2_dev; TYPE_1__* pci; } ;
struct bttv {int shutdown; TYPE_5__ c; int /*<<< orphan*/  bt848_mmio; int /*<<< orphan*/  main; int /*<<< orphan*/  radio_ctrl_handler; int /*<<< orphan*/  ctrl_handler; } ;
struct TYPE_8__ {scalar_t__ has_dvb; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_GPIO_DMA_CTL ; 
 int /*<<< orphan*/  BT848_GPIO_OUT_EN ; 
 int /*<<< orphan*/  BT848_INT_MASK ; 
 int /*<<< orphan*/  BT848_INT_STAT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ bttv_gpio ; 
 int /*<<< orphan*/  FUNC2 (struct bttv*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 TYPE_4__* bttv_tvcards ; 
 int /*<<< orphan*/  FUNC5 (struct bttv*) ; 
 scalar_t__ bttv_verbose ; 
 int /*<<< orphan*/ ** bttvs ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC8 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct bttv*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 struct v4l2_device* FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bttv* FUNC18 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC21(struct pci_dev *pci_dev)
{
	struct v4l2_device *v4l2_dev = FUNC13(pci_dev);
	struct bttv *btv = FUNC18(v4l2_dev);

	if (bttv_verbose)
		FUNC16("%d: unloading\n", btv->c.nr);

	if (bttv_tvcards[btv->c.type].has_dvb)
		FUNC8(btv);

	/* shutdown everything (DMA+IRQs) */
	FUNC0(~15, BT848_GPIO_DMA_CTL);
	FUNC6(0, BT848_INT_MASK);
	FUNC6(~0x0, BT848_INT_STAT);
	FUNC6(0x0, BT848_GPIO_OUT_EN);
	if (bttv_gpio)
		FUNC2(btv,"cleanup");

	/* tell gpio modules we are leaving ... */
	btv->shutdown=1;
	FUNC3(btv);
	FUNC4(&btv->c);

	/* unregister i2c_bus + input */
	FUNC7(btv);

	/* unregister video4linux */
	FUNC5(btv);

	/* free allocated memory */
	FUNC19(&btv->ctrl_handler);
	FUNC19(&btv->radio_ctrl_handler);
	FUNC1(btv->c.pci,&btv->main);

	/* free resources */
	FUNC9(btv->c.pci->irq,btv);
	FUNC10(btv->bt848_mmio);
	FUNC17(FUNC15(btv->c.pci,0),
			   FUNC14(btv->c.pci,0));
	FUNC12(btv->c.pci);

	FUNC20(&btv->c.v4l2_dev);
	bttvs[btv->c.nr] = NULL;
	FUNC11(btv);

	return;
}