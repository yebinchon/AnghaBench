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
typedef  int /*<<< orphan*/  u8 ;
struct hwsim_phy {int dummy; } ;
struct hwsim_edge_info {int lqi; } ;
struct hwsim_edge {struct hwsim_phy* endpoint; int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hwsim_edge*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hwsim_edge_info*) ; 

__attribute__((used)) static struct hwsim_edge *FUNC3(struct hwsim_phy *endpoint, u8 lqi)
{
	struct hwsim_edge_info *einfo;
	struct hwsim_edge *e;

	e = FUNC1(sizeof(*e), GFP_KERNEL);
	if (!e)
		return NULL;

	einfo = FUNC1(sizeof(*einfo), GFP_KERNEL);
	if (!einfo) {
		FUNC0(e);
		return NULL;
	}

	einfo->lqi = 0xff;
	FUNC2(e->info, einfo);
	e->endpoint = endpoint;

	return e;
}