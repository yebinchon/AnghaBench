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
struct pcm20 {int /*<<< orphan*/ * kthread; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct file*) ; 
 int FUNC3 (struct file*) ; 
 struct pcm20* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file)
{
	struct pcm20 *dev = FUNC4(file);

	if (FUNC2(file) && !FUNC0(dev->kthread)) {
		FUNC1(dev->kthread);
		dev->kthread = NULL;
	}
	return FUNC3(file);
}