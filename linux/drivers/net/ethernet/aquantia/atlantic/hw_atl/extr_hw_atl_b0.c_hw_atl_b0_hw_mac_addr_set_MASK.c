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
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HW_ATL_B0_MAC ; 
 int FUNC0 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct aq_hw_s *self, u8 *mac_addr)
{
	int err = 0;
	unsigned int h = 0U;
	unsigned int l = 0U;

	if (!mac_addr) {
		err = -EINVAL;
		goto err_exit;
	}
	h = (mac_addr[0] << 8) | (mac_addr[1]);
	l = (mac_addr[2] << 24) | (mac_addr[3] << 16) |
		(mac_addr[4] << 8) | mac_addr[5];

	FUNC1(self, 0U, HW_ATL_B0_MAC);
	FUNC2(self, l, HW_ATL_B0_MAC);
	FUNC3(self, h, HW_ATL_B0_MAC);
	FUNC1(self, 1U, HW_ATL_B0_MAC);

	err = FUNC0(self);

err_exit:
	return err;
}