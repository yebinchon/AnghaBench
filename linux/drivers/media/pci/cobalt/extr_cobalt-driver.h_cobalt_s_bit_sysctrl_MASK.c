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
typedef  unsigned long u32 ;
struct cobalt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COBALT_SYS_CTRL_BASE ; 
 unsigned long FUNC0 (struct cobalt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cobalt*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct cobalt *cobalt,
					int bit, int val)
{
	u32 ctrl = FUNC0(cobalt, COBALT_SYS_CTRL_BASE);

	FUNC1(cobalt, COBALT_SYS_CTRL_BASE,
			(ctrl & ~(1UL << bit)) | (val << bit));
}