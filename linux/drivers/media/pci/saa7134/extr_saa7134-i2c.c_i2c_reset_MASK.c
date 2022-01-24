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
struct saa7134_dev {int dummy; } ;
typedef  enum i2c_status { ____Placeholder_i2c_status } i2c_status ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_WAIT_DELAY ; 
 int I2C_WAIT_RETRY ; 
 int /*<<< orphan*/  NOP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7134_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7134_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct saa7134_dev *dev)
{
	enum i2c_status status;
	int count;

	FUNC0(2, "i2c reset\n");
	status = FUNC1(dev);
	if (!FUNC2(status))
		return true;
	FUNC5(dev,status);

	for (count = 0; count < I2C_WAIT_RETRY; count++) {
		status = FUNC1(dev);
		if (!FUNC2(status))
			break;
		FUNC6(I2C_WAIT_DELAY);
	}
	if (I2C_WAIT_RETRY == count)
		return false;

	if (!FUNC3(status))
		return false;

	FUNC4(dev,NOP);
	return true;
}