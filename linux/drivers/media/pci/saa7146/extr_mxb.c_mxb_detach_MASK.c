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
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {int /*<<< orphan*/  i2c_adapter; int /*<<< orphan*/  vbi_dev; int /*<<< orphan*/  video_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct saa7146_dev*) ; 
 scalar_t__ FUNC1 (struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mxb*) ; 
 int /*<<< orphan*/  mxb_num ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mxb*,int) ; 

__attribute__((used)) static int FUNC7(struct saa7146_dev *dev)
{
	struct mxb *mxb = (struct mxb *)dev->ext_priv;

	FUNC0("dev:%p\n", dev);

	/* mute audio on tea6420s */
	FUNC6(mxb, 6);

	FUNC4(&mxb->video_dev,dev);
	if (FUNC1(dev))
		FUNC4(&mxb->vbi_dev, dev);
	FUNC5(dev);

	mxb_num--;

	FUNC2(&mxb->i2c_adapter);
	FUNC3(mxb);

	return 0;
}