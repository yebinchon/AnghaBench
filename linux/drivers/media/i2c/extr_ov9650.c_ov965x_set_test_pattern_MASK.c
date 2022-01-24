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
struct ov965x {int dummy; } ;

/* Variables and functions */
 int COM23_TEST_MODE ; 
 int /*<<< orphan*/  REG_COM23 ; 
 int FUNC0 (struct ov965x*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct ov965x*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct ov965x *ov965x, int value)
{
	int ret;
	u8 reg;

	ret = FUNC0(ov965x, REG_COM23, &reg);
	if (ret < 0)
		return ret;
	reg = value ? reg | COM23_TEST_MODE : reg & ~COM23_TEST_MODE;
	return FUNC1(ov965x, REG_COM23, reg);
}