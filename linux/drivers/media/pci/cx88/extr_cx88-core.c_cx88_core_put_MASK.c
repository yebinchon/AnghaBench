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
struct pci_dev {int dummy; } ;
struct cx88_core {scalar_t__ i2c_rc; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  audio_hdl; int /*<<< orphan*/  video_hdl; int /*<<< orphan*/  lmmio; int /*<<< orphan*/  devlist; int /*<<< orphan*/  i2c_adap; scalar_t__ i2c_rtc; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  cx88_devcount ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*) ; 
 int /*<<< orphan*/  devlist ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(struct cx88_core *core, struct pci_dev *pci)
{
	FUNC11(FUNC9(pci, 0),
			   FUNC8(pci, 0));

	if (!FUNC10(&core->refcount))
		return;

	FUNC6(&devlist);
	FUNC0(core);
	if (core->i2c_rc == 0) {
		if (core->i2c_rtc)
			FUNC2(core->i2c_rtc);
		FUNC1(&core->i2c_adap);
	}
	FUNC5(&core->devlist);
	FUNC3(core->lmmio);
	cx88_devcount--;
	FUNC7(&devlist);
	FUNC12(&core->video_hdl);
	FUNC12(&core->audio_hdl);
	FUNC13(&core->v4l2_dev);
	FUNC4(core);
}