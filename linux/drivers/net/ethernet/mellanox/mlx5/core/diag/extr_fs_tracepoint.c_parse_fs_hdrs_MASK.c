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
typedef  int /*<<< orphan*/  u32 ;
struct trace_seq {int dummy; } ;

/* Variables and functions */
 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_INNER_HEADERS ; 
 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS ; 
 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS ; 
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 char* FUNC2 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,int /*<<< orphan*/ ) ; 

const char *FUNC5(struct trace_seq *p,
			  u8 match_criteria_enable,
			  const u32 *mask_outer,
			  const u32 *mask_misc,
			  const u32 *mask_inner,
			  const u32 *value_outer,
			  const u32 *value_misc,
			  const u32 *value_inner)
{
	const char *ret = FUNC2(p);

	if (match_criteria_enable &
	    1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS) {
		FUNC3(p, "[outer] ");
		FUNC0(p, mask_outer, value_outer);
	}

	if (match_criteria_enable &
	    1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS) {
		FUNC3(p, "[misc] ");
		FUNC1(p, mask_misc, value_misc);
	}
	if (match_criteria_enable &
	    1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_INNER_HEADERS) {
		FUNC3(p, "[inner] ");
		FUNC0(p, mask_inner, value_inner);
	}
	FUNC4(p, 0);
	return ret;
}