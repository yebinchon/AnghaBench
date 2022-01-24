#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u_long ;
struct map_info {int dummy; } ;
struct cfi_private {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {unsigned long* x; TYPE_1__ member_0; } ;
typedef  TYPE_2__ map_word ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct cfi_private*) ; 
 unsigned long FUNC2 (struct map_info*,unsigned long) ; 
 unsigned long FUNC3 (struct map_info*,unsigned long) ; 
 int FUNC4 (struct map_info*) ; 
 scalar_t__ FUNC5 (struct map_info*) ; 

map_word FUNC6(u_long cmd, struct map_info *map, struct cfi_private *cfi)
{
	map_word val = { 0 };
	int wordwidth, words_per_bus, chip_mode, chips_per_word;
	unsigned long onecmd;
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

	chip_mode = FUNC4(map) / FUNC1(cfi);
	chips_per_word = wordwidth * FUNC1(cfi) / FUNC4(map);

	/* First, determine what the bit-pattern should be for a single
	   device, according to chip mode and endianness... */
	switch (chip_mode) {
	default: FUNC0();
	case 1:
		onecmd = cmd;
		break;
	case 2:
		onecmd = FUNC2(map, cmd);
		break;
	case 4:
		onecmd = FUNC3(map, cmd);
		break;
	}

	/* Now replicate it across the size of an unsigned long, or
	   just to the bus width as appropriate */
	switch (chips_per_word) {
	default: FUNC0();
#if BITS_PER_LONG >= 64
	case 8:
		onecmd |= (onecmd << (chip_mode * 32));
#endif
		/* fall through */
	case 4:
		onecmd |= (onecmd << (chip_mode * 16));
		/* fall through */
	case 2:
		onecmd |= (onecmd << (chip_mode * 8));
		/* fall through */
	case 1:
		;
	}

	/* And finally, for the multi-word case, replicate it
	   in all words in the structure */
	for (i=0; i < words_per_bus; i++) {
		val.x[i] = onecmd;
	}

	return val;
}