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
struct bfa_ioc {int /*<<< orphan*/  hb_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOC_E_HWERROR ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ioc_hbfails ; 

void
FUNC3(struct bfa_ioc *ioc)
{
	FUNC1(ioc, ioc_hbfails);
	FUNC2(ioc, ioc->hb_count);
	FUNC0(ioc, IOC_E_HWERROR);
}