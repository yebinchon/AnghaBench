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
typedef  int u64 ;
typedef  int u32 ;
struct ir_raw_event {int dummy; } ;
typedef  enum rc_proto { ____Placeholder_rc_proto } rc_proto ;

/* Variables and functions */
 int /*<<< orphan*/  SANYO_NBITS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct ir_raw_event**,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ir_sanyo_timings ; 

__attribute__((used)) static int FUNC3(enum rc_proto protocol, u32 scancode,
			   struct ir_raw_event *events, unsigned int max)
{
	struct ir_raw_event *e = events;
	int ret;
	u64 raw;

	raw = ((u64)(FUNC0(scancode >> 8) & 0xfff8) << (8 + 8 + 13 - 3)) |
	      ((u64)(FUNC0(~scancode >> 8) & 0xfff8) << (8 + 8 +  0 - 3)) |
	      ((FUNC1(scancode) & 0xff) << 8) |
	      (FUNC1(~scancode) & 0xff);

	ret = FUNC2(&e, max, &ir_sanyo_timings, SANYO_NBITS, raw);
	if (ret < 0)
		return ret;

	return e - events;
}