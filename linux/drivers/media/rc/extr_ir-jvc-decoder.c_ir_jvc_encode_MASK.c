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
typedef  int u32 ;
struct ir_raw_event {int dummy; } ;
typedef  enum rc_proto { ____Placeholder_rc_proto } rc_proto ;

/* Variables and functions */
 int /*<<< orphan*/  JVC_NBITS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ir_jvc_timings ; 
 int FUNC1 (struct ir_raw_event**,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(enum rc_proto protocol, u32 scancode,
			 struct ir_raw_event *events, unsigned int max)
{
	struct ir_raw_event *e = events;
	int ret;
	u32 raw = (FUNC0((scancode >> 8) & 0xff) << 8) |
		  (FUNC0((scancode >> 0) & 0xff) << 0);

	ret = FUNC1(&e, max, &ir_jvc_timings, JVC_NBITS, raw);
	if (ret < 0)
		return ret;

	return e - events;
}