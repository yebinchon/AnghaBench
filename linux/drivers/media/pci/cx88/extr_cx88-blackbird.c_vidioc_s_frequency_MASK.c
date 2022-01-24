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
struct v4l2_frequency {scalar_t__ tuner; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ tuner_type; } ;
struct cx88_core {int /*<<< orphan*/  field; int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_1__ board; } ;
struct cx8802_dev {int /*<<< orphan*/  vb2_mpegq; struct cx88_core* core; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ UNSET ; 
 int /*<<< orphan*/  FUNC0 (struct cx8802_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx8802_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx8802_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx88_core*,struct v4l2_frequency const*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx88_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 struct cx8802_dev* FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *priv,
			      const struct v4l2_frequency *f)
{
	struct cx8802_dev *dev = FUNC7(file);
	struct cx88_core *core = dev->core;
	bool streaming;

	if (FUNC5(core->board.tuner_type == UNSET))
		return -EINVAL;
	if (FUNC5(f->tuner != 0))
		return -EINVAL;
	streaming = FUNC6(&dev->vb2_mpegq);
	if (streaming)
		FUNC2(dev);

	FUNC3(core, f);
	FUNC0(dev);
	FUNC4(core, core->width, core->height, core->field);
	if (streaming)
		FUNC1(dev);
	return 0;
}