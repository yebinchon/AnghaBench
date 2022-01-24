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
struct ucb1x00 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_IO_DATA ; 
 unsigned int FUNC0 (struct ucb1x00*,int /*<<< orphan*/ ) ; 

unsigned int FUNC1(struct ucb1x00 *ucb)
{
	return FUNC0(ucb, UCB_IO_DATA);
}