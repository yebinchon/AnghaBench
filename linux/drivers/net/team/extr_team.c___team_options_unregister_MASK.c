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
struct team_option {int /*<<< orphan*/  list; int /*<<< orphan*/  name; } ;
struct team {int dummy; } ;

/* Variables and functions */
 struct team_option* FUNC0 (struct team*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct team*,struct team_option*) ; 
 int /*<<< orphan*/  FUNC2 (struct team_option*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct team *team,
				      const struct team_option *option,
				      size_t option_count)
{
	int i;

	for (i = 0; i < option_count; i++, option++) {
		struct team_option *del_opt;

		del_opt = FUNC0(team, option->name);
		if (del_opt) {
			FUNC1(team, del_opt);
			FUNC3(&del_opt->list);
			FUNC2(del_opt);
		}
	}
}