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
struct pvr2_context_stream {struct pvr2_channel* user; } ;
struct pvr2_channel {int /*<<< orphan*/  mc_head; struct pvr2_context_stream* stream; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct pvr2_channel *cp,
			      struct pvr2_context_stream *sp)
{
	int code = 0;
	FUNC1(cp->mc_head); do {
		if (sp == cp->stream) break;
		if (sp && sp->user) {
			code = -EBUSY;
			break;
		}
		FUNC0(cp);
		if (!sp) break;
		sp->user = cp;
		cp->stream = sp;
	} while (0);
	FUNC2(cp->mc_head);
	return code;
}