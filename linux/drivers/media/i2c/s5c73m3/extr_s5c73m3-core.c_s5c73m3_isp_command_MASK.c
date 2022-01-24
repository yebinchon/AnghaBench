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
typedef  int u16 ;
struct s5c73m3 {int dummy; } ;

/* Variables and functions */
 int REG_STATUS ; 
 int /*<<< orphan*/  REG_STATUS_ISP_COMMAND_COMPLETED ; 
 int FUNC0 (struct s5c73m3*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct s5c73m3*,int,int) ; 

int FUNC2(struct s5c73m3 *state, u16 command, u16 data)
{
	int ret;

	ret = FUNC0(state, REG_STATUS_ISP_COMMAND_COMPLETED);
	if (ret < 0)
		return ret;

	ret = FUNC1(state, 0x00095000, command);
	if (ret < 0)
		return ret;

	ret = FUNC1(state, 0x00095002, data);
	if (ret < 0)
		return ret;

	return FUNC1(state, REG_STATUS, 0x0001);
}