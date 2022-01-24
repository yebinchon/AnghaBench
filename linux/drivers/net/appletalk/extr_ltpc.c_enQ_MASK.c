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
struct xmitQel {int /*<<< orphan*/ * cbuf; struct xmitQel* next; } ;

/* Variables and functions */
 int DEBUG_LOWER ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  txqueue_lock ; 
 struct xmitQel* xmQhd ; 
 struct xmitQel* xmQtl ; 

__attribute__((used)) static void FUNC3(struct xmitQel *qel)
{
	unsigned long flags;
	qel->next = NULL;
	
	FUNC1(&txqueue_lock, flags);
	if (xmQtl) {
		xmQtl->next = qel;
	} else {
		xmQhd = qel;
	}
	xmQtl = qel;
	FUNC2(&txqueue_lock, flags);

	if (debug & DEBUG_LOWER)
		FUNC0("enqueued a 0x%02x command\n",qel->cbuf[0]);
}