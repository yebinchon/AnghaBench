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
struct radio_isa_card {int dummy; } ;

/* Variables and functions */
 int GEMTEK_NS ; 
 int /*<<< orphan*/  SHORT_DELAY ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct radio_isa_card *isa, int io)
{
	int i, q;

	q = FUNC0(io);	/* Read bus contents before probing. */
	/* Try to turn on CE, CK and DA respectively and check if card responds
	   properly. */
	for (i = 0; i < 3; ++i) {
		FUNC1(1 << i, io);
		FUNC2(SHORT_DELAY);

		if ((FUNC0(io) & ~GEMTEK_NS) != (0x17 | (1 << (i + 5))))
			return false;
	}
	FUNC1(q >> 5, io);	/* Write bus contents back. */
	FUNC2(SHORT_DELAY);
	return true;
}