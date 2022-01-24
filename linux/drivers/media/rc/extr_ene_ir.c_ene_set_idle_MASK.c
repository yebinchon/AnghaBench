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
struct rc_dev {struct ene_device* priv; } ;
struct ene_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ene_device*) ; 

__attribute__((used)) static void FUNC2(struct rc_dev *rdev, bool idle)
{
	struct ene_device *dev = rdev->priv;

	if (idle) {
		FUNC1(dev);
		FUNC0("RX: end of data");
	}
}