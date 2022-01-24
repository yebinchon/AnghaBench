#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct map_info {int dummy; } ;
struct cfi_private {int dummy; } ;
struct TYPE_3__ {unsigned long* x; } ;
typedef  TYPE_1__ map_word ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (struct map_info*,unsigned long) ; 
 unsigned long FUNC2 (struct map_info*,unsigned long) ; 
 int FUNC3 (struct cfi_private*) ; 
 int FUNC4 (struct map_info*) ; 
 scalar_t__ FUNC5 (struct map_info*) ; 

unsigned long FUNC6(map_word val, struct map_info *map,
					   struct cfi_private *cfi)
{
	int wordwidth, words_per_bus, chip_mode, chips_per_word;
	unsigned long onestat, res = 0;
	int i;

	/* We do it this way to give the compiler a fighting chance
	   of optimising away all the crap for 'bankwidth' larger than
	   an unsigned long, in the common case where that support is
	   disabled */
	if (FUNC5(map)) {
		wordwidth = sizeof(unsigned long);
		words_per_bus = (FUNC4(map)) / wordwidth; // i.e. normally 1
	} else {
		wordwidth = FUNC4(map);
		words_per_bus = 1;
	}

	chip_mode = FUNC4(map) / FUNC3(cfi);
	chips_per_word = wordwidth * FUNC3(cfi) / FUNC4(map);

	onestat = val.x[0];
	/* Or all status words together */
	for (i=1; i < words_per_bus; i++) {
		onestat |= val.x[i];
	}

	res = onestat;
	switch(chips_per_word) {
	default: FUNC0();
#if BITS_PER_LONG >= 64
	case 8:
		res |= (onestat >> (chip_mode * 32));
#endif
		/* fall through */
	case 4:
		res |= (onestat >> (chip_mode * 16));
		/* fall through */
	case 2:
		res |= (onestat >> (chip_mode * 8));
		/* fall through */
	case 1:
		;
	}

	/* Last, determine what the bit-pattern should be for a single
	   device, according to chip mode and endianness... */
	switch (chip_mode) {
	case 1:
		break;
	case 2:
		res = FUNC1(map, res);
		break;
	case 4:
		res = FUNC2(map, res);
		break;
	default: FUNC0();
	}
	return res;
}