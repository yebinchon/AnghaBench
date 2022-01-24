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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct pcm20 {int /*<<< orphan*/  kthread; TYPE_1__ v4l2_dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pcm20*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcm20_thread ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC5 (struct file*) ; 
 int FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 struct pcm20* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct pcm20 *dev = FUNC8(file);
	int res = FUNC6(file);

	if (!res && FUNC5(file) &&
	    FUNC1(dev->kthread)) {
		dev->kthread = FUNC3(pcm20_thread, dev, "%s",
					   dev->v4l2_dev.name);
		if (FUNC0(dev->kthread)) {
			FUNC4(&dev->v4l2_dev, "kernel_thread() failed\n");
			FUNC7(file);
			return FUNC2(dev->kthread);
		}
	}
	return res;
}