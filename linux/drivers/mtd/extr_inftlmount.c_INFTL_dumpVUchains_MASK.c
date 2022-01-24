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
struct INFTLrecord {int nb_blocks; int* VUtable; int* PUtable; } ;

/* Variables and functions */
 int BLOCK_NIL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(struct INFTLrecord *s)
{
	int logical, block, i;

	FUNC0("-------------------------------------------"
		"----------------------------------\n");

	FUNC0("INFTL Virtual Unit Chains:\n");
	for (logical = 0; logical < s->nb_blocks; logical++) {
		block = s->VUtable[logical];
		if (block >= s->nb_blocks)
			continue;
		FUNC0("  LOGICAL %d --> %d ", logical, block);
		for (i = 0; i < s->nb_blocks; i++) {
			if (s->PUtable[block] == BLOCK_NIL)
				break;
			block = s->PUtable[block];
			FUNC0("%d ", block);
		}
		FUNC0("\n");
	}

	FUNC0("-------------------------------------------"
		"----------------------------------\n");
}