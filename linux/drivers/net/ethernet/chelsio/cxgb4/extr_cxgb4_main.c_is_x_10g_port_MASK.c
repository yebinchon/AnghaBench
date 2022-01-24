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
struct link_config {int /*<<< orphan*/  pcaps; } ;

/* Variables and functions */
 unsigned int FW_PORT_CAP32_SPEED_100M ; 
 unsigned int FW_PORT_CAP32_SPEED_1G ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(const struct link_config *lc)
{
	unsigned int speeds, high_speeds;

	speeds = FUNC1(FUNC0(lc->pcaps));
	high_speeds = speeds &
			~(FW_PORT_CAP32_SPEED_100M | FW_PORT_CAP32_SPEED_1G);

	return high_speeds != 0;
}