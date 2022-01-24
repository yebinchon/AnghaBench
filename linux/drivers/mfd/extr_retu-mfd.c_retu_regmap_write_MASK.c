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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,int) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(void *context, const void *data, size_t count)
{
	u8 reg;
	u16 val;
	struct device *dev = context;
	struct i2c_client *i2c = FUNC3(dev);

	FUNC0(count != sizeof(reg) + sizeof(val));
	FUNC2(&reg, data, sizeof(reg));
	FUNC2(&val, data + sizeof(reg), sizeof(val));
	return FUNC1(i2c, reg, val);
}