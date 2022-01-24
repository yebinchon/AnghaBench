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
struct ar5523 {int dummy; } ;
typedef  int /*<<< orphan*/  cap_be ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AR5523_CMD_FLAG_MAGIC ; 
 int /*<<< orphan*/  WDCMSG_TARGET_GET_CAPABILITY ; 
 int FUNC0 (struct ar5523*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ar5523 *ar, u32 cap, u32 *val)
{
	int error;
	__be32 cap_be, val_be;

	cap_be = FUNC3(cap);
	error = FUNC0(ar, WDCMSG_TARGET_GET_CAPABILITY, &cap_be,
				sizeof(cap_be), &val_be, sizeof(__be32),
				AR5523_CMD_FLAG_MAGIC);
	if (error != 0) {
		FUNC1(ar, "could not read capability %u\n", cap);
		return error;
	}
	*val = FUNC2(val_be);
	return error;
}