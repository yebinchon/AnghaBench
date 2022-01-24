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
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,int) ; 

__attribute__((used)) static int FUNC4(struct vnic_dev *vdev,
	int (*start)(struct vnic_dev *, int),
	int (*finished)(struct vnic_dev *, int *),
	int arg)
{
	unsigned long time;
	int done;
	int err;

	FUNC0(FUNC1());

	err = start(vdev, arg);
	if (err)
		return err;

	/* Wait for func to complete...2 seconds max
	 */

	time = jiffies + (HZ * 2);
	do {

		err = finished(vdev, &done);
		if (err)
			return err;

		if (done)
			return 0;

		FUNC2(HZ / 10);

	} while (FUNC3(time, jiffies));

	return -ETIMEDOUT;
}