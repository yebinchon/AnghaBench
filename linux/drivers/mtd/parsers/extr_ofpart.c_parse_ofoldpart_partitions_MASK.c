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
struct mtd_partition {int offset; int size; char const* name; int /*<<< orphan*/  mask_flags; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  part ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MTD_WRITEABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtd_partition* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (struct mtd_info*) ; 
 void* FUNC3 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct device_node*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(struct mtd_info *master,
				      const struct mtd_partition **pparts,
				      struct mtd_part_parser_data *data)
{
	struct mtd_partition *parts;
	struct device_node *dp;
	int i, plen, nr_parts;
	const struct {
		__be32 offset, len;
	} *part;
	const char *names;

	/* Pull of_node from the master device node */
	dp = FUNC2(master);
	if (!dp)
		return 0;

	part = FUNC3(dp, "partitions", &plen);
	if (!part)
		return 0; /* No partitions found */

	FUNC4("Device tree uses obsolete partition map binding: %pOF\n", dp);

	nr_parts = plen / sizeof(part[0]);

	parts = FUNC1(nr_parts, sizeof(*parts), GFP_KERNEL);
	if (!parts)
		return -ENOMEM;

	names = FUNC3(dp, "partition-names", &plen);

	for (i = 0; i < nr_parts; i++) {
		parts[i].offset = FUNC0(part->offset);
		parts[i].size   = FUNC0(part->len) & ~1;
		/* bit 0 set signifies read only partition */
		if (FUNC0(part->len) & 1)
			parts[i].mask_flags = MTD_WRITEABLE;

		if (names && (plen > 0)) {
			int len = FUNC5(names) + 1;

			parts[i].name = names;
			plen -= len;
			names += len;
		} else {
			parts[i].name = "unnamed";
		}

		part++;
	}

	*pparts = parts;
	return nr_parts;
}