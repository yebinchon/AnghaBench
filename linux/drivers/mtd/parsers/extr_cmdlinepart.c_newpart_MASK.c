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
struct mtd_partition {unsigned long long size; unsigned long long offset; unsigned int mask_flags; unsigned char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mtd_partition* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mtd_partition*) ; 
 unsigned int MTD_POWERUP_LOCK ; 
 unsigned int MTD_WRITEABLE ; 
 unsigned long long OFFSET_CONTINUOUS ; 
 unsigned long long SIZE_REMAINING ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct mtd_partition* FUNC3 (int,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,char*,int) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,char*,int) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 

__attribute__((used)) static struct mtd_partition * FUNC10(char *s,
				      char **retptr,
				      int *num_parts,
				      int this_part,
				      unsigned char **extra_mem_ptr,
				      int extra_mem_size)
{
	struct mtd_partition *parts;
	unsigned long long size, offset = OFFSET_CONTINUOUS;
	char *name;
	int name_len;
	unsigned char *extra_mem;
	char delim;
	unsigned int mask_flags;

	/* fetch the partition size */
	if (*s == '-') {
		/* assign all remaining space to this partition */
		size = SIZE_REMAINING;
		s++;
	} else {
		size = FUNC4(s, &s);
		if (!size) {
			FUNC5("partition has size 0\n");
			return FUNC0(-EINVAL);
		}
	}

	/* fetch partition name and flags */
	mask_flags = 0; /* this is going to be a regular partition */
	delim = 0;

	/* check for offset */
	if (*s == '@') {
		s++;
		offset = FUNC4(s, &s);
	}

	/* now look for name */
	if (*s == '(')
		delim = ')';

	if (delim) {
		char *p;

		name = ++s;
		p = FUNC7(name, delim);
		if (!p) {
			FUNC5("no closing %c found in partition name\n", delim);
			return FUNC0(-EINVAL);
		}
		name_len = p - name;
		s = p + 1;
	} else {
		name = NULL;
		name_len = 13; /* Partition_000 */
	}

	/* record name length for memory allocation later */
	extra_mem_size += name_len + 1;

	/* test for options */
	if (FUNC9(s, "ro", 2) == 0) {
		mask_flags |= MTD_WRITEABLE;
		s += 2;
	}

	/* if lk is found do NOT unlock the MTD partition*/
	if (FUNC9(s, "lk", 2) == 0) {
		mask_flags |= MTD_POWERUP_LOCK;
		s += 2;
	}

	/* test if more partitions are following */
	if (*s == ',') {
		if (size == SIZE_REMAINING) {
			FUNC5("no partitions allowed after a fill-up partition\n");
			return FUNC0(-EINVAL);
		}
		/* more partitions follow, parse them */
		parts = FUNC10(s + 1, &s, num_parts, this_part + 1,
				&extra_mem, extra_mem_size);
		if (FUNC1(parts))
			return parts;
	} else {
		/* this is the last partition: allocate space for all */
		int alloc_size;

		*num_parts = this_part + 1;
		alloc_size = *num_parts * sizeof(struct mtd_partition) +
			     extra_mem_size;

		parts = FUNC3(alloc_size, GFP_KERNEL);
		if (!parts)
			return FUNC0(-ENOMEM);
		extra_mem = (unsigned char *)(parts + *num_parts);
	}

	/*
	 * enter this partition (offset will be calculated later if it is
	 * OFFSET_CONTINUOUS at this point)
	 */
	parts[this_part].size = size;
	parts[this_part].offset = offset;
	parts[this_part].mask_flags = mask_flags;
	if (name)
		FUNC8(extra_mem, name, name_len + 1);
	else
		FUNC6(extra_mem, "Partition_%03d", this_part);
	parts[this_part].name = extra_mem;
	extra_mem += name_len + 1;

	FUNC2(("partition %d: name <%s>, offset %llx, size %llx, mask flags %x\n",
	     this_part, parts[this_part].name, parts[this_part].offset,
	     parts[this_part].size, parts[this_part].mask_flags));

	/* return (updated) pointer to extra_mem memory */
	if (extra_mem_ptr)
		*extra_mem_ptr = extra_mem;

	/* return (updated) pointer command line string */
	*retptr = s;

	/* return partition table */
	return parts;
}