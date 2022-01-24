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
typedef  int /*<<< orphan*/  u16 ;
struct em28xx_i2c_bus {scalar_t__ algo_type; struct em28xx* dev; } ;
struct em28xx {int dummy; } ;

/* Variables and functions */
 scalar_t__ EM28XX_I2C_ALGO_EM25XX_BUS_B ; 
 scalar_t__ EM28XX_I2C_ALGO_EM2800 ; 
 scalar_t__ EM28XX_I2C_ALGO_EM28XX ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct em28xx*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct em28xx*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct em28xx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct em28xx_i2c_bus *i2c_bus, u16 addr)
{
	struct em28xx *dev = i2c_bus->dev;
	int rc = -EOPNOTSUPP;

	if (i2c_bus->algo_type == EM28XX_I2C_ALGO_EM28XX)
		rc = FUNC2(dev, addr);
	else if (i2c_bus->algo_type == EM28XX_I2C_ALGO_EM2800)
		rc = FUNC1(dev, addr);
	else if (i2c_bus->algo_type == EM28XX_I2C_ALGO_EM25XX_BUS_B)
		rc = FUNC0(dev, addr);
	return rc;
}