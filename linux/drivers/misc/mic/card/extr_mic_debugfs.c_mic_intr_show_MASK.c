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
struct seq_file {struct mic_driver* private; } ;
struct mic_device {int dummy; } ;
struct mic_driver {struct mic_device mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mic_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, void *unused)
{
	struct mic_driver *mdrv = s->private;
	struct mic_device *mdev = &mdrv->mdev;

	FUNC0(mdev, 0);
	FUNC1(1000);
	FUNC0(mdev, 1);
	FUNC1(1000);
	FUNC0(mdev, 2);
	FUNC1(1000);
	FUNC0(mdev, 3);
	FUNC1(1000);

	return 0;
}