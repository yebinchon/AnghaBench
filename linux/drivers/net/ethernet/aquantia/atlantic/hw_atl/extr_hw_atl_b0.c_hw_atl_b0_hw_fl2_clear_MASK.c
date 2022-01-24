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
struct aq_rx_filter_l2 {int /*<<< orphan*/  location; } ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct aq_hw_s *self,
				  struct aq_rx_filter_l2 *data)
{
	FUNC1(self, 0U, data->location);
	FUNC2(self, 0U, data->location);
	FUNC3(self, 0U, data->location);

	return FUNC0(self);
}