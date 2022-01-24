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
typedef  int /*<<< orphan*/  u8 ;
struct ite_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IT8709_MODE ; 
 int IT8709_READ ; 
 int /*<<< orphan*/  IT8709_REG_IDX ; 
 int /*<<< orphan*/  IT8709_REG_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct ite_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ite_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ite_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC3(struct ite_dev *dev, int index)
{
	/* just wait in case the previous access was a write */
	FUNC1(dev);
	FUNC2(dev, index, IT8709_REG_IDX);
	FUNC2(dev, IT8709_READ, IT8709_MODE);

	/* wait for the read data to be available */
	FUNC1(dev);

	/* return the read value */
	return FUNC0(dev, IT8709_REG_VAL);
}