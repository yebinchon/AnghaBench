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
typedef  int u8 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (void*,int,int*,size_t) ; 
 int FUNC1 (void*,int,int*,size_t) ; 

__attribute__((used)) static int FUNC2(void *context, const void *data,
				   size_t len)
{
	u8 *dout = (u8 *)data;
	u8 reg = dout[0];
	++dout;
	--len;

	if (reg > 0xa0)
		return FUNC1(context, reg, dout, len);

	if (len > 2)
		return -EINVAL;

	return FUNC0(context, reg, dout, len);
}