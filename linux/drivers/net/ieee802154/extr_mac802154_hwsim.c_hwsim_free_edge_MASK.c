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
struct hwsim_edge_info {int /*<<< orphan*/  info; } ;
struct hwsim_edge {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hwsim_edge_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 struct hwsim_edge_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct hwsim_edge *e)
{
	struct hwsim_edge_info *einfo;

	FUNC2();
	einfo = FUNC1(e->info);
	FUNC3();

	FUNC0(einfo, rcu);
	FUNC0(e, rcu);
}