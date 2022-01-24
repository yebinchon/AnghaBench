#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct team_option_inst_info {int dummy; } ;
struct team {int dummy; } ;
struct TYPE_2__ {struct team_option_inst_info* ap_opt_inst_info; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct team*) ; 

__attribute__((used)) static int FUNC1(struct team *team,
			       struct team_option_inst_info *info)
{
	FUNC0(team)->ap_opt_inst_info = info;
	return 0;
}