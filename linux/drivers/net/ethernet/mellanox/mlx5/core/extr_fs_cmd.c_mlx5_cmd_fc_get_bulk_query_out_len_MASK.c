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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  query_flow_counter_out ; 
 int /*<<< orphan*/  traffic_counter ; 

int FUNC1(int bulk_len)
{
	return FUNC0(query_flow_counter_out) +
		FUNC0(traffic_counter) * bulk_len;
}