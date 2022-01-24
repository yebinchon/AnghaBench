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
 int FUNC1 (struct team*,struct team_option const*,size_t) ; 

int FUNC2(struct team *team,
			  const struct team_option *option,
			  size_t option_count)
{
	int err;

	err = FUNC1(team, option, option_count);
	if (err)
		return err;
	FUNC0(team);
	return 0;
}