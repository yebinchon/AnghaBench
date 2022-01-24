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
typedef  int /*<<< orphan*/  u8 ;
struct aq_rx_filter_l3l4 {int /*<<< orphan*/  cmd; int /*<<< orphan*/  p_src; int /*<<< orphan*/  p_dst; int /*<<< orphan*/ * ip_src; int /*<<< orphan*/ * ip_dst; int /*<<< orphan*/  is_ipv6; int /*<<< orphan*/  location; } ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,struct aq_rx_filter_l3l4*) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct aq_hw_s *self,
				  struct aq_rx_filter_l3l4 *data)
{
	u8 location = data->location;

	FUNC1(self, data);

	if (data->cmd) {
		if (!data->is_ipv6) {
			FUNC5(self,
							  location,
							  data->ip_dst[0]);
			FUNC6(self,
							 location,
							 data->ip_src[0]);
		} else {
			FUNC7(self,
							  location,
							  data->ip_dst);
			FUNC8(self,
							 location,
							 data->ip_src);
		}
	}
	FUNC2(self, data->p_dst, location);
	FUNC3(self, data->p_src, location);
	FUNC4(self, location, data->cmd);

	return FUNC0(self);
}