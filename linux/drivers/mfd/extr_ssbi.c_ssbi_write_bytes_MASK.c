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
typedef  int u32 ;
typedef  int u16 ;
struct ssbi {scalar_t__ controller_type; } ;

/* Variables and functions */
 scalar_t__ MSM_SBI_CTRL_SSBI2 ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  SSBI2_CMD ; 
 int /*<<< orphan*/  SSBI2_MODE2 ; 
 int /*<<< orphan*/  SSBI_STATUS_MCHN_BUSY ; 
 int /*<<< orphan*/  SSBI_STATUS_READY ; 
 int FUNC1 (struct ssbi*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ssbi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssbi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ssbi *ssbi, u16 addr, const u8 *buf, int len)
{
	int ret = 0;

	if (ssbi->controller_type == MSM_SBI_CTRL_SSBI2) {
		u32 mode2 = FUNC1(ssbi, SSBI2_MODE2);
		mode2 = FUNC0(mode2, addr);
		FUNC3(ssbi, mode2, SSBI2_MODE2);
	}

	while (len) {
		ret = FUNC2(ssbi, SSBI_STATUS_READY, 0);
		if (ret)
			goto err;

		FUNC3(ssbi, ((addr & 0xff) << 16) | *buf, SSBI2_CMD);
		ret = FUNC2(ssbi, 0, SSBI_STATUS_MCHN_BUSY);
		if (ret)
			goto err;
		buf++;
		len--;
	}

err:
	return ret;
}