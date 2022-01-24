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
struct mtd_partitions {int nr_parts; int /*<<< orphan*/  parts; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_part_parser {char const* name; } ;
struct mtd_info {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct mtd_info*,int /*<<< orphan*/ ,int) ; 
 char** default_mtd_part_types ; 
 char** default_subpartition_types ; 
 scalar_t__ FUNC1 (struct mtd_info*) ; 
 int FUNC2 (struct mtd_part_parser*,struct mtd_info*,struct mtd_partitions*,struct mtd_part_parser_data*) ; 
 int FUNC3 (struct mtd_info*,struct mtd_partitions*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_partitions*) ; 
 struct mtd_part_parser* FUNC5 (char const* const) ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_part_parser*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const* const) ; 
 int /*<<< orphan*/  FUNC9 (char const* const,char*) ; 

int FUNC10(struct mtd_info *master, const char *const *types,
			 struct mtd_part_parser_data *data)
{
	struct mtd_partitions pparts = { };
	struct mtd_part_parser *parser;
	int ret, err = 0;

	if (!types)
		types = FUNC1(master) ? default_subpartition_types :
			default_mtd_part_types;

	for ( ; *types; types++) {
		/*
		 * ofpart is a special type that means OF partitioning info
		 * should be used. It requires a bit different logic so it is
		 * handled in a separated function.
		 */
		if (!FUNC9(*types, "ofpart")) {
			ret = FUNC3(master, &pparts);
		} else {
			FUNC7("%s: parsing partitions %s\n", master->name,
				 *types);
			parser = FUNC5(*types);
			if (!parser && !FUNC8("%s", *types))
				parser = FUNC5(*types);
			FUNC7("%s: got parser %s\n", master->name,
				parser ? parser->name : NULL);
			if (!parser)
				continue;
			ret = FUNC2(parser, master, &pparts, data);
			if (ret <= 0)
				FUNC6(parser);
		}
		/* Found partitions! */
		if (ret > 0) {
			err = FUNC0(master, pparts.parts,
						 pparts.nr_parts);
			FUNC4(&pparts);
			return err ? err : pparts.nr_parts;
		}
		/*
		 * Stash the first error we see; only report it if no parser
		 * succeeds
		 */
		if (ret < 0 && !err)
			err = ret;
	}
	return err;
}