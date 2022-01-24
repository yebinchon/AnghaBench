#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct crashtype {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  symbol_name; } ;
struct crashpoint {TYPE_1__ kprobe; } ;

/* Variables and functions */
 struct crashpoint* lkdtm_crashpoint ; 
 struct crashtype const* lkdtm_crashtype ; 
 int /*<<< orphan*/  FUNC0 (struct crashtype const*) ; 
 TYPE_1__* lkdtm_kprobe ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct crashpoint *crashpoint,
				 const struct crashtype *crashtype)
{
	int ret;

	/* If this doesn't have a symbol, just call immediately. */
	if (!crashpoint->kprobe.symbol_name) {
		FUNC0(crashtype);
		return 0;
	}

	if (lkdtm_kprobe != NULL)
		FUNC3(lkdtm_kprobe);

	lkdtm_crashpoint = crashpoint;
	lkdtm_crashtype = crashtype;
	lkdtm_kprobe = &crashpoint->kprobe;
	ret = FUNC2(lkdtm_kprobe);
	if (ret < 0) {
		FUNC1("Couldn't register kprobe %s\n",
			crashpoint->kprobe.symbol_name);
		lkdtm_kprobe = NULL;
		lkdtm_crashpoint = NULL;
		lkdtm_crashtype = NULL;
	}

	return ret;
}