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
typedef  int /*<<< orphan*/  u32 ;
struct card {scalar_t__ plx; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ PLX_MAILBOX_1 ; 
 int jiffies ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct card *card, u32 cmd)
{
	unsigned long timeout = jiffies + 5 * HZ;

	FUNC3(cmd, card->plx + PLX_MAILBOX_1);
	do {
		if (FUNC0(card->plx + PLX_MAILBOX_1) == 0)
			return 0;

		FUNC1();
	}while (FUNC2(timeout, jiffies));

	return -1;
}