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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct solo_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int const,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct solo_dev*,int,int /*<<< orphan*/ *,scalar_t__,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct solo_dev *solo_dev, u32 off,
			       u16 val, int reg_size)
{
	__le16 *buf;
	const int n = 64, size = n * sizeof(*buf);
	int i, ret = 0;

	buf = FUNC3(size, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	for (i = 0; i < n; i++)
		buf[i] = FUNC1(val);

	for (i = 0; i < reg_size; i += size) {
		ret = FUNC4(solo_dev, 1, buf,
				   FUNC0(solo_dev) + off + i,
				   size, 0, 0);

		if (ret)
			break;
	}

	FUNC2(buf);
	return ret;
}