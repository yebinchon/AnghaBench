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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct em28xx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct em28xx*,int,int /*<<< orphan*/ ,int*,int) ; 

int FUNC1(struct em28xx *dev, u8 req, u16 reg)
{
	int ret;
	u8 val;

	ret = FUNC0(dev, req, reg, &val, 1);
	if (ret < 0)
		return ret;

	return val;
}