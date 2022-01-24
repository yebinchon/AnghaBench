#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct aq_hw_s {TYPE_1__* aq_nic_cfg; } ;
struct TYPE_2__ {unsigned int mc_list_count; scalar_t__ is_mc_list_enabled; } ;

/* Variables and functions */
 unsigned int HW_ATL_A0_MAC_MAX ; 
 unsigned int HW_ATL_A0_MAC_MIN ; 
 int /*<<< orphan*/  IFF_BROADCAST ; 
 int /*<<< orphan*/  IFF_MULTICAST ; 
 int /*<<< orphan*/  IFF_PROMISC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aq_hw_s*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct aq_hw_s *self,
					  unsigned int packet_filter)
{
	unsigned int i = 0U;

	FUNC5(self,
					    FUNC0(IFF_PROMISC));
	FUNC4(self,
					 FUNC0(IFF_MULTICAST), 0);
	FUNC3(self, FUNC0(IFF_BROADCAST));

	self->aq_nic_cfg->is_mc_list_enabled =
			FUNC0(IFF_MULTICAST);

	for (i = HW_ATL_A0_MAC_MIN; i < HW_ATL_A0_MAC_MAX; ++i)
		FUNC2(self,
					   (self->aq_nic_cfg->is_mc_list_enabled &&
					   (i <= self->aq_nic_cfg->mc_list_count)) ?
					   1U : 0U, i);

	return FUNC1(self);
}