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
struct nicvf {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct nicvf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*,int) ; 

__attribute__((used)) static int FUNC3(struct nicvf *nic)
{
	int err;

	/* Enable Qset */
	FUNC2(nic, true);

	/* Initialize queues and HW for data transfer */
	err = FUNC1(nic, true);
	if (err) {
		FUNC0(nic->netdev,
			   "Failed to alloc/config VF's QSet resources\n");
		return err;
	}

	return 0;
}