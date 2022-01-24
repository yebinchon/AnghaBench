#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct file {struct cx231xx_fh* private_data; } ;
struct TYPE_4__ {scalar_t__ reading; scalar_t__ streaming; } ;
struct cx231xx_fh {int /*<<< orphan*/  fh; TYPE_1__ vidq; int /*<<< orphan*/  v4l_reading; struct cx231xx* dev; } ;
struct cx231xx {int /*<<< orphan*/  lock; int /*<<< orphan*/  v4l_reader_count; scalar_t__ USE_ISO; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX231XX_SUSPEND ; 
 int /*<<< orphan*/  CX231xx_END_NOW ; 
 int /*<<< orphan*/  CX231xx_MPEG_CAPTURE ; 
 int /*<<< orphan*/  CX231xx_RAW_BITS_NONE ; 
 int /*<<< orphan*/  CX2341X_ENC_STOP_CAPTURE ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx231xx*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cx231xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC7 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC9 (struct cx231xx_fh*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC18(struct file *file)
{
	struct cx231xx_fh  *fh  = file->private_data;
	struct cx231xx *dev = fh->dev;

	FUNC8(3, "mpeg_release()! dev=0x%p\n", dev);

	FUNC11(&dev->lock);

	FUNC5(dev);

	/* do this before setting alternate! */
	if (dev->USE_ISO)
		FUNC7(dev);
	else
		FUNC6(dev);
	FUNC4(dev, CX231XX_SUSPEND);

	FUNC3(fh->dev, CX2341X_ENC_STOP_CAPTURE, 3, 0,
			CX231xx_END_NOW, CX231xx_MPEG_CAPTURE,
			CX231xx_RAW_BITS_NONE);

	/* FIXME: Review this crap */
	/* Shut device down on last close */
	if (FUNC0(&fh->v4l_reading, 1, 0) == 1) {
		if (FUNC1(&dev->v4l_reader_count) == 0) {
			/* stop mpeg capture */

			FUNC10(500);
			FUNC2(dev);

		}
	}

	if (fh->vidq.streaming)
		FUNC17(&fh->vidq);
	if (fh->vidq.reading)
		FUNC16(&fh->vidq);

	FUNC15(&fh->vidq);
	FUNC13(&fh->fh);
	FUNC14(&fh->fh);
	FUNC9(fh);
	FUNC12(&dev->lock);
	return 0;
}