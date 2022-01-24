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
struct aq_rx_filter_vlan {int queue; int /*<<< orphan*/  vlan_id; scalar_t__ enable; } ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int AQ_VLAN_MAX_FILTERS ; 
 int FUNC0 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct aq_hw_s*,int,int) ; 

__attribute__((used)) static int FUNC6(struct aq_hw_s *self,
				 struct aq_rx_filter_vlan *aq_vlans)
{
	int i;

	for (i = 0; i < AQ_VLAN_MAX_FILTERS; i++) {
		FUNC2(self, 0U, i);
		FUNC4(self, 0U, i);
		if (aq_vlans[i].enable) {
			FUNC3(self,
						   aq_vlans[i].vlan_id,
						   i);
			FUNC1(self, 1U, i);
			FUNC2(self, 1U, i);
			if (aq_vlans[i].queue != 0xFF) {
				FUNC5(self,
							    aq_vlans[i].queue,
							    i);
				FUNC4(self, 1U, i);
			}
		}
	}

	return FUNC0(self);
}