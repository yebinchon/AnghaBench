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
struct ppp_net {int /*<<< orphan*/  units_idr; } ;
struct ppp {int dummy; } ;

/* Variables and functions */
 struct ppp* FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct ppp *
FUNC1(struct ppp_net *pn, int unit)
{
	return FUNC0(&pn->units_idr, unit);
}