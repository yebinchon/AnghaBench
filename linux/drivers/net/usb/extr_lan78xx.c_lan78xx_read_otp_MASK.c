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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct lan78xx_net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ OTP_INDICATOR_1 ; 
 scalar_t__ OTP_INDICATOR_2 ; 
 int FUNC0 (struct lan78xx_net*,int,int,scalar_t__*) ; 

__attribute__((used)) static int FUNC1(struct lan78xx_net *dev, u32 offset,
			    u32 length, u8 *data)
{
	u8 sig;
	int ret;

	ret = FUNC0(dev, 0, 1, &sig);

	if (ret == 0) {
		if (sig == OTP_INDICATOR_2)
			offset += 0x100;
		else if (sig != OTP_INDICATOR_1)
			ret = -EINVAL;
		if (!ret)
			ret = FUNC0(dev, offset, length, data);
	}

	return ret;
}