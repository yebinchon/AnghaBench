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
struct mtd_part_parser {int /*<<< orphan*/  list; int /*<<< orphan*/ * cleanup; struct module* owner; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtd_part_parser_cleanup_default ; 
 int /*<<< orphan*/  part_parser_lock ; 
 int /*<<< orphan*/  part_parsers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct mtd_part_parser *p, struct module *owner)
{
	p->owner = owner;

	if (!p->cleanup)
		p->cleanup = &mtd_part_parser_cleanup_default;

	FUNC1(&part_parser_lock);
	FUNC0(&p->list, &part_parsers);
	FUNC2(&part_parser_lock);

	return 0;
}