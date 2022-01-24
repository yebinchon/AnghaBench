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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fmdev {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MOST_MODE_SET ; 
 int /*<<< orphan*/  REG_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct fmdev *fmdev, u16 *mode)
{
	__be16 curr_mode;
	u32 resp_len;
	int ret;

	if (mode == NULL) {
		FUNC2("Invalid memory\n");
		return -ENOMEM;
	}

	ret = FUNC1(fmdev, MOST_MODE_SET, REG_RD, NULL, 2,
			&curr_mode, &resp_len);
	if (ret < 0)
		return ret;

	*mode = FUNC0(curr_mode);

	return 0;
}