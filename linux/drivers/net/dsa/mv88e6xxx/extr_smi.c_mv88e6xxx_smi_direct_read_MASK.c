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
typedef  int u16 ;
struct mv88e6xxx_chip {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct mv88e6xxx_chip *chip,
				     int dev, int reg, u16 *data)
{
	int ret;

	ret = FUNC0(chip->bus, dev, reg);
	if (ret < 0)
		return ret;

	*data = ret & 0xffff;

	return 0;
}