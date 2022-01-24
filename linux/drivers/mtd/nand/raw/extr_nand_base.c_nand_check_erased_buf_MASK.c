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

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int BITS_PER_LONG ; 
 int EBADMSG ; 
 int FUNC0 (unsigned char const) ; 
 int FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(void *buf, int len, int bitflips_threshold)
{
	const unsigned char *bitmap = buf;
	int bitflips = 0;
	int weight;

	for (; len && ((uintptr_t)bitmap) % sizeof(long);
	     len--, bitmap++) {
		weight = FUNC0(*bitmap);
		bitflips += BITS_PER_BYTE - weight;
		if (FUNC2(bitflips > bitflips_threshold))
			return -EBADMSG;
	}

	for (; len >= sizeof(long);
	     len -= sizeof(long), bitmap += sizeof(long)) {
		unsigned long d = *((unsigned long *)bitmap);
		if (d == ~0UL)
			continue;
		weight = FUNC1(d);
		bitflips += BITS_PER_LONG - weight;
		if (FUNC2(bitflips > bitflips_threshold))
			return -EBADMSG;
	}

	for (; len > 0; len--, bitmap++) {
		weight = FUNC0(*bitmap);
		bitflips += BITS_PER_BYTE - weight;
		if (FUNC2(bitflips > bitflips_threshold))
			return -EBADMSG;
	}

	return bitflips;
}