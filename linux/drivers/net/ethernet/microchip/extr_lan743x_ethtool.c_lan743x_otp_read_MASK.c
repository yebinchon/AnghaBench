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
typedef  scalar_t__ u32 ;
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MAX_OTP_SIZE ; 
 int /*<<< orphan*/  OTP_READ_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*) ; 
 int FUNC2 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct lan743x_adapter*,scalar_t__) ; 
 int FUNC5 (struct lan743x_adapter*) ; 

__attribute__((used)) static int FUNC6(struct lan743x_adapter *adapter, u32 offset,
			    u32 length, u8 *data)
{
	int ret;
	int i;

	if (offset + length > MAX_OTP_SIZE)
		return -EINVAL;

	ret = FUNC2(adapter);
	if (ret < 0)
		return ret;

	ret = FUNC5(adapter);
	if (ret < 0)
		return ret;

	for (i = 0; i < length; i++) {
		FUNC4(adapter, offset + i);

		FUNC3(adapter);
		ret = FUNC5(adapter);
		if (ret < 0)
			return ret;
		data[i] = FUNC0(adapter, OTP_READ_DATA);
	}

	FUNC1(adapter);

	return 0;
}