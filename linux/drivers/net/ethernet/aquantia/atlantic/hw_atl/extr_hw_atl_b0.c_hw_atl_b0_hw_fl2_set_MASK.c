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
struct aq_rx_filter_l2 {scalar_t__ queue; int /*<<< orphan*/  location; int /*<<< orphan*/  user_priority; scalar_t__ user_priority_en; int /*<<< orphan*/  ethertype; } ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aq_hw_s*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct aq_hw_s*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct aq_hw_s *self,
				struct aq_rx_filter_l2 *data)
{
	FUNC2(self, 1U, data->location);
	FUNC3(self, data->ethertype, data->location);
	FUNC6(self,
					     !!data->user_priority_en,
					     data->location);
	if (data->user_priority_en)
		FUNC7(self,
						  data->user_priority,
						  data->location);

	if (data->queue < 0) {
		FUNC1(self, 0U, data->location);
		FUNC4(self, 0U, data->location);
	} else {
		FUNC1(self, 1U, data->location);
		FUNC4(self, 1U, data->location);
		FUNC5(self, data->queue, data->location);
	}

	return FUNC0(self);
}