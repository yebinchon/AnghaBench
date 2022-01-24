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
struct il_priv {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int EIO ; 
 int /*<<< orphan*/  HBUS_TARG_MEM_RADDR ; 
 int /*<<< orphan*/  HBUS_TARG_MEM_RDAT ; 
 scalar_t__ IL4965_RTC_INST_LOWER_BOUND ; 
 scalar_t__ FUNC1 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct il_priv *il, __le32 * image, u32 len)
{
	u32 val;
	int ret = 0;
	u32 errcnt = 0;
	u32 i;

	FUNC0("ucode inst image size is %u\n", len);

	for (i = 0; i < len; i += 100, image += 100 / sizeof(u32)) {
		/* read data comes through single port, auto-incr addr */
		/* NOTE: Use the debugless read so we don't flood kernel log
		 * if IL_DL_IO is set */
		FUNC2(il, HBUS_TARG_MEM_RADDR, i + IL4965_RTC_INST_LOWER_BOUND);
		val = FUNC1(il, HBUS_TARG_MEM_RDAT);
		if (val != FUNC3(*image)) {
			ret = -EIO;
			errcnt++;
			if (errcnt >= 3)
				break;
		}
	}

	return ret;
}