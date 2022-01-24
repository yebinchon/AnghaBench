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
typedef  int u32 ;
struct radio_isa_card {int /*<<< orphan*/  io; int /*<<< orphan*/  mute; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radio_isa_card*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radio_isa_card*) ; 

__attribute__((used)) static int FUNC4(struct radio_isa_card *isa, u32 freq)
{
	int i;

	freq = freq / 200 + 856;

	FUNC1(0xc8, isa->io);
	FUNC1(0xc9, isa->io);
	FUNC1(0xc9, isa->io);

	for (i = 0; i < 10; i++)
		FUNC3(isa);

	for (i = 14; i >= 0; i--)
		if (freq & (1 << i))
			FUNC0(isa);
		else
			FUNC3(isa);

	FUNC1(0xc8, isa->io);
	FUNC1(FUNC2(isa->mute), isa->io);
	return 0;
}