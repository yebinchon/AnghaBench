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
typedef  int /*<<< orphan*/  u32 ;
struct vmci_ctx {TYPE_1__* cred; } ;
typedef  int /*<<< orphan*/  kuid_t ;
struct TYPE_2__ {int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vmci_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmci_ctx*) ; 
 scalar_t__ FUNC3 () ; 

bool FUNC4(u32 context_id, kuid_t uid)
{
	bool is_owner = false;

	if (FUNC3()) {
		struct vmci_ctx *context = FUNC1(context_id);
		if (context) {
			if (context->cred)
				is_owner = FUNC0(context->cred->uid, uid);
			FUNC2(context);
		}
	}

	return is_owner;
}