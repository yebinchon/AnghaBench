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
struct aq_rx_filter_l3l4 {int /*<<< orphan*/  is_ipv6; scalar_t__ location; } ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int HW_ATL_RX_CNT_REG_ADDR_IPV6 ; 
 int FUNC0 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct aq_hw_s*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct aq_hw_s*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct aq_hw_s*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct aq_hw_s *self,
				    struct aq_rx_filter_l3l4 *data)
{
	u8 location = data->location;

	if (!data->is_ipv6) {
		FUNC3(self, location);
		FUNC2(self, 0U, location);
		FUNC1(self, 0U, location);
		FUNC5(self, location);
		FUNC4(self, location);
	} else {
		int i;

		for (i = 0; i < HW_ATL_RX_CNT_REG_ADDR_IPV6; ++i) {
			FUNC3(self, location + i);
			FUNC2(self, 0U, location + i);
			FUNC1(self, 0U, location + i);
		}
		FUNC7(self, location);
		FUNC6(self, location);
	}

	return FUNC0(self);
}