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
struct mt9v111_dev {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9V111_CORE_R0D_CORE_RESET ; 
 int /*<<< orphan*/  MT9V111_CORE_R0D_CORE_RESET_MASK ; 
 int /*<<< orphan*/  MT9V111_IFP_R07_IFP_RESET ; 
 int /*<<< orphan*/  MT9V111_IFP_R07_IFP_RESET_MASK ; 
 int /*<<< orphan*/  MT9V111_R01_CORE ; 
 int /*<<< orphan*/  MT9V111_R01_IFP ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct mt9v111_dev *mt9v111)
{
	struct i2c_client *c = mt9v111->client;
	int ret;

	/* Software reset core and IFP blocks. */

	ret = FUNC0(c, MT9V111_R01_CORE,
			     MT9V111_CORE_R0D_CORE_RESET,
			     MT9V111_CORE_R0D_CORE_RESET_MASK, 1);
	if (ret)
		return ret;
	FUNC1(500, 1000);

	ret = FUNC0(c, MT9V111_R01_CORE,
			     MT9V111_CORE_R0D_CORE_RESET,
			     MT9V111_CORE_R0D_CORE_RESET_MASK, 0);
	if (ret)
		return ret;
	FUNC1(500, 1000);

	ret = FUNC0(c, MT9V111_R01_IFP,
			     MT9V111_IFP_R07_IFP_RESET,
			     MT9V111_IFP_R07_IFP_RESET_MASK, 1);
	if (ret)
		return ret;
	FUNC1(500, 1000);

	ret = FUNC0(c, MT9V111_R01_IFP,
			     MT9V111_IFP_R07_IFP_RESET,
			     MT9V111_IFP_R07_IFP_RESET_MASK, 0);
	if (ret)
		return ret;
	FUNC1(500, 1000);

	return 0;
}