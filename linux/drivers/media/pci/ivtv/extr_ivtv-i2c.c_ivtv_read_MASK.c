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
typedef  size_t u32 ;
struct ivtv {int dummy; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char) ; 
 int FUNC1 (struct ivtv*,unsigned char*,int) ; 
 int FUNC2 (struct ivtv*,unsigned char) ; 
 int FUNC3 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*) ; 

__attribute__((used)) static int FUNC5(struct ivtv *itv, unsigned char addr, unsigned char *data, u32 len)
{
	int retry, ret = -EREMOTEIO;
	u32 i;

	for (retry = 0; ret != 0 && retry < 8; ++retry) {
		ret = FUNC3(itv);
		if (ret == 0)
			ret = FUNC2(itv, (addr << 1) | 1);
		for (i = 0; ret == 0 && i < len; ++i) {
			ret = FUNC1(itv, &data[i], i == len - 1);
		}
		FUNC4(itv);
	}
	if (ret)
		FUNC0("i2c read from %x failed\n", addr);
	return ret;
}