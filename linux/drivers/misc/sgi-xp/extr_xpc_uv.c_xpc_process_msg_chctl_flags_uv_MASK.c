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
struct xpc_partition {struct xpc_channel* channels; } ;
struct xpc_channel {int flags; } ;

/* Variables and functions */
 int XPC_C_CONNECTED ; 
 int XPC_C_CONNECTEDCALLOUT_MADE ; 
 int /*<<< orphan*/  FUNC0 (struct xpc_channel*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct xpc_channel*) ; 
 int FUNC3 (struct xpc_channel*) ; 

__attribute__((used)) static void
FUNC4(struct xpc_partition *part, int ch_number)
{
	struct xpc_channel *ch = &part->channels[ch_number];
	int ndeliverable_payloads;

	FUNC2(ch);

	ndeliverable_payloads = FUNC3(ch);

	if (ndeliverable_payloads > 0 &&
	    (ch->flags & XPC_C_CONNECTED) &&
	    (ch->flags & XPC_C_CONNECTEDCALLOUT_MADE)) {

		FUNC0(ch, ndeliverable_payloads);
	}

	FUNC1(ch);
}