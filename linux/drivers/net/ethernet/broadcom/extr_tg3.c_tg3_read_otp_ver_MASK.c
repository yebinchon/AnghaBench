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
typedef  int u64 ;
typedef  int u32 ;
struct tg3 {int /*<<< orphan*/ * fw_ver; } ;

/* Variables and functions */
 scalar_t__ ASIC_REV_5762 ; 
 scalar_t__ OTP_ADDRESS_MAGIC0 ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ TG3_VER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,scalar_t__,int*) ; 
 scalar_t__ FUNC4 (struct tg3*) ; 

__attribute__((used)) static void FUNC5(struct tg3 *tp)
{
	u32 val, val2;

	if (FUNC4(tp) != ASIC_REV_5762)
		return;

	if (!FUNC3(tp, OTP_ADDRESS_MAGIC0, &val) &&
	    !FUNC3(tp, OTP_ADDRESS_MAGIC0 + 4, &val2) &&
	    FUNC0(val)) {
		u64 val64 = (u64) val << 32 | val2;
		u32 ver = 0;
		int i, vlen;

		for (i = 0; i < 7; i++) {
			if ((val64 & 0xff) == 0)
				break;
			ver = val64 & 0xff;
			val64 >>= 8;
		}
		vlen = FUNC2(tp->fw_ver);
		FUNC1(&tp->fw_ver[vlen], TG3_VER_SIZE - vlen, " .%02d", ver);
	}
}