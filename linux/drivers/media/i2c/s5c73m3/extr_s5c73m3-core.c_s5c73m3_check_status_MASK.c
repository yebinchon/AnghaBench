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
typedef  unsigned int u16 ;
struct s5c73m3 {int /*<<< orphan*/  sensor_sd; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  REG_I2C_SEQ_STATUS ; 
 int /*<<< orphan*/  REG_I2C_STATUS ; 
 int /*<<< orphan*/  REG_STATUS ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  s5c73m3_dbg ; 
 int FUNC2 (struct s5c73m3*,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct s5c73m3 *state, unsigned int value)
{
	unsigned long start = jiffies;
	unsigned long end = start + FUNC1(2000);
	int ret;
	u16 status;
	int count = 0;

	do {
		ret = FUNC2(state, REG_STATUS, &status);
		if (ret < 0 || status == value)
			break;
		FUNC4(500, 1000);
		++count;
	} while (FUNC3(end));

	if (count > 0)
		FUNC5(1, s5c73m3_dbg, &state->sensor_sd,
			 "status check took %dms\n",
			 FUNC0(jiffies - start));

	if (ret == 0 && status != value) {
		u16 i2c_status = 0;
		u16 i2c_seq_status = 0;

		FUNC2(state, REG_I2C_STATUS, &i2c_status);
		FUNC2(state, REG_I2C_SEQ_STATUS, &i2c_seq_status);

		FUNC6(&state->sensor_sd,
			 "wrong status %#x, expected: %#x, i2c_status: %#x/%#x\n",
			 status, value, i2c_status, i2c_seq_status);

		return -ETIMEDOUT;
	}

	return ret;
}