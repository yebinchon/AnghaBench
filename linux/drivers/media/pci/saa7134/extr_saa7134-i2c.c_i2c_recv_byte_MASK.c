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
 int /*<<< orphan*/  CONTINUE ; 
 int EIO ; 
 int /*<<< orphan*/  SAA7134_I2C_DATA ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char) ; 
 int FUNC1 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7134_dev*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(struct saa7134_dev *dev)
{
	enum i2c_status status;
	unsigned char data;

	FUNC4(dev,CONTINUE);
	if (!FUNC2(dev))
		return -EIO;
	status = FUNC1(dev);
	if (FUNC3(status))
		return -EIO;
	data = FUNC5(SAA7134_I2C_DATA);
	FUNC0(2, "i2c data <= 0x%x\n", data);
	return data;
}