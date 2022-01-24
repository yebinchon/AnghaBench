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
struct mtd_partitions {int /*<<< orphan*/  nr_parts; int /*<<< orphan*/  parts; struct mtd_part_parser* parser; } ;
struct mtd_part_parser {int /*<<< orphan*/  (* cleanup ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtd_part_parser const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct mtd_partitions *parts)
{
	const struct mtd_part_parser *parser;

	if (!parts)
		return;

	parser = parts->parser;
	if (parser) {
		if (parser->cleanup)
			parser->cleanup(parts->parts, parts->nr_parts);

		FUNC0(parser);
	}
}