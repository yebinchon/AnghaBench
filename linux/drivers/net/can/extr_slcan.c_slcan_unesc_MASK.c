#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct slcan {int rcount; unsigned char* rbuff; int /*<<< orphan*/  flags; TYPE_2__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_over_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int SLC_MTU ; 
 int /*<<< orphan*/  SLF_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct slcan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct slcan *sl, unsigned char s)
{
	if ((s == '\r') || (s == '\a')) { /* CR or BEL ends the pdu */
		if (!FUNC2(SLF_ERROR, &sl->flags) &&
		    (sl->rcount > 4))  {
			FUNC1(sl);
		}
		sl->rcount = 0;
	} else {
		if (!FUNC3(SLF_ERROR, &sl->flags))  {
			if (sl->rcount < SLC_MTU)  {
				sl->rbuff[sl->rcount++] = s;
				return;
			} else {
				sl->dev->stats.rx_over_errors++;
				FUNC0(SLF_ERROR, &sl->flags);
			}
		}
	}
}