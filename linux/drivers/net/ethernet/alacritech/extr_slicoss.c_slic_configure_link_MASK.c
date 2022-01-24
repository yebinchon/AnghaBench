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
struct slic_device {int /*<<< orphan*/  link_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slic_device*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct slic_device *sdev, int speed,
				unsigned int duplex)
{
	FUNC1(&sdev->link_lock);
	FUNC0(sdev, speed, duplex);
	FUNC2(&sdev->link_lock);
}