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
struct device {int dummy; } ;
struct camif_dev {int /*<<< orphan*/ * clock; } ;

/* Variables and functions */
 size_t CLK_CAM ; 
 size_t CLK_GATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct camif_dev* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev)
{
	struct camif_dev *camif = FUNC1(dev);

	FUNC0(camif->clock[CLK_GATE]);
	/* null op on s3c244x */
	FUNC0(camif->clock[CLK_CAM]);
	return 0;
}