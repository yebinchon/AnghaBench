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
struct bfa_ioc {int dbg_fwsave_once; int dbg_fwsave_len; int /*<<< orphan*/  dbg_fwsave; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC1(struct bfa_ioc *ioc)
{
	int tlen;

	if (ioc->dbg_fwsave_once) {
		ioc->dbg_fwsave_once = false;
		if (ioc->dbg_fwsave_len) {
			tlen = ioc->dbg_fwsave_len;
			FUNC0(ioc, ioc->dbg_fwsave, &tlen);
		}
	}
}