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
struct trace_seq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FLOWACT2STR ; 
 int NUM_FLOW_ACTIONS ; 
 char* FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,int /*<<< orphan*/ ) ; 

const char *FUNC3(struct trace_seq *p,
			 int *ids,
			 unsigned int num)
{
	const char *ret = FUNC0(p);
	unsigned int i;

	for (i = 0; i < num; i++) {
		if (ids[i] < NUM_FLOW_ACTIONS)
			FUNC1(p, "%s ", FLOWACT2STR[ids[i]]);
		else
			FUNC1(p, "UNKNOWN ");
	}

	FUNC2(p, 0);
	return ret;
}