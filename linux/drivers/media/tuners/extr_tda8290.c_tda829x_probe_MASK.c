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
typedef  int /*<<< orphan*/  u8 ;
struct tuner_i2c_props {int /*<<< orphan*/  addr; struct i2c_adapter* adap; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int PROBE_BUFFER_SIZE ; 
 scalar_t__ FUNC0 (struct tuner_i2c_props*) ; 
 scalar_t__ FUNC1 (struct tuner_i2c_props*) ; 
 int /*<<< orphan*/  FUNC2 (struct tuner_i2c_props*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tuner_i2c_props*,unsigned char*,int,unsigned char*,int) ; 

int FUNC4(struct i2c_adapter *i2c_adap, u8 i2c_addr)
{
	struct tuner_i2c_props i2c_props = {
		.adap = i2c_adap,
		.addr = i2c_addr,
	};

	static unsigned char soft_reset[]   = { 0x00, 0x00 };
	static unsigned char easy_mode_b[]  = { 0x01, 0x02 };
	static unsigned char easy_mode_g[]  = { 0x01, 0x04 };
	static unsigned char restore_9886[] = { 0x00, 0xd6, 0x30 };
	static unsigned char addr_dto_lsb = 0x07;
	unsigned char data;
#define PROBE_BUFFER_SIZE 8
	unsigned char buf[PROBE_BUFFER_SIZE];
	int i;

	/* rule out tda9887, which would return the same byte repeatedly */
	FUNC3(&i2c_props,
				 soft_reset, 1, buf, PROBE_BUFFER_SIZE);
	for (i = 1; i < PROBE_BUFFER_SIZE; i++) {
		if (buf[i] != buf[0])
			break;
	}

	/* all bytes are equal, not a tda829x - probably a tda9887 */
	if (i == PROBE_BUFFER_SIZE)
		return -ENODEV;

	if ((FUNC0(&i2c_props) == 0) ||
	    (FUNC1(&i2c_props) == 0))
		return 0;

	/* fall back to old probing method */
	FUNC2(&i2c_props, easy_mode_b, 2);
	FUNC2(&i2c_props, soft_reset, 2);
	FUNC3(&i2c_props, &addr_dto_lsb, 1, &data, 1);
	if (data == 0) {
		FUNC2(&i2c_props, easy_mode_g, 2);
		FUNC2(&i2c_props, soft_reset, 2);
		FUNC3(&i2c_props,
					 &addr_dto_lsb, 1, &data, 1);
		if (data == 0x7b) {
			return 0;
		}
	}
	FUNC2(&i2c_props, restore_9886, 3);
	return -ENODEV;
}