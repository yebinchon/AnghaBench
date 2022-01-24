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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,void*,int) ; 

__attribute__((used)) static inline int FUNC2(struct i2c_client *i2c,
				       int reg, int bytes, void *src)
{
	unsigned char buf[9];
	int ret;

	buf[0] = (unsigned char)reg;
	FUNC1(&buf[1], src, bytes);

	ret = FUNC0(i2c, buf, bytes + 1);
	if (ret < 0)
		return ret;
	return 0;
}