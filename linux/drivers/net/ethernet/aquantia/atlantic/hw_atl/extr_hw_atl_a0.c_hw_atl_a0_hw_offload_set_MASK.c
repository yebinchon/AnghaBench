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
struct aq_nic_cfg_s {int dummy; } ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct aq_hw_s*,int) ; 

__attribute__((used)) static int FUNC6(struct aq_hw_s *self,
				    struct aq_nic_cfg_s *aq_nic_cfg)
{
	/* TX checksums offloads*/
	FUNC4(self, 1);
	FUNC5(self, 1);

	/* RX checksums offloads*/
	FUNC1(self, 1);
	FUNC2(self, 1);

	/* LSO offloads*/
	FUNC3(self, 0xFFFFFFFFU);

	return FUNC0(self);
}