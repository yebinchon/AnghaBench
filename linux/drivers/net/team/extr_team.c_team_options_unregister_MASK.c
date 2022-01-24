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
struct team_option {int dummy; } ;
struct team {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct team*) ; 
 int /*<<< orphan*/  FUNC1 (struct team*,struct team_option const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct team*,struct team_option const*,size_t) ; 

void FUNC3(struct team *team,
			     const struct team_option *option,
			     size_t option_count)
{
	FUNC1(team, option, option_count);
	FUNC0(team);
	FUNC2(team, option, option_count);
}