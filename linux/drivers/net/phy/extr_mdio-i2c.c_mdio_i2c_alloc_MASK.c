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
struct mii_bus {struct i2c_adapter* priv; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct device* parent; int /*<<< orphan*/  id; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mii_bus* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 char* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_mii_read ; 
 int /*<<< orphan*/  i2c_mii_write ; 
 struct mii_bus* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

struct mii_bus *FUNC5(struct device *parent, struct i2c_adapter *i2c)
{
	struct mii_bus *mii;

	if (!FUNC2(i2c, I2C_FUNC_I2C))
		return FUNC0(-EINVAL);

	mii = FUNC3();
	if (!mii)
		return FUNC0(-ENOMEM);

	FUNC4(mii->id, MII_BUS_ID_SIZE, "i2c:%s", FUNC1(parent));
	mii->parent = parent;
	mii->read = i2c_mii_read;
	mii->write = i2c_mii_write;
	mii->priv = i2c;

	return mii;
}