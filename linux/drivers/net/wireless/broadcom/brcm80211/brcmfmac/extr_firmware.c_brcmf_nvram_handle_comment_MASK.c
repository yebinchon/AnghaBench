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
struct nvram_parser {size_t pos; int column; int /*<<< orphan*/  line; int /*<<< orphan*/ * data; } ;
typedef  enum nvram_parser_state { ____Placeholder_nvram_parser_state } nvram_parser_state ;

/* Variables and functions */
 int END ; 
 int IDLE ; 
 char* FUNC0 (char*,char) ; 

__attribute__((used)) static enum nvram_parser_state
FUNC1(struct nvram_parser *nvp)
{
	char *eoc, *sol;

	sol = (char *)&nvp->data[nvp->pos];
	eoc = FUNC0(sol, '\n');
	if (!eoc) {
		eoc = FUNC0(sol, '\0');
		if (!eoc)
			return END;
	}

	/* eat all moving to next line */
	nvp->line++;
	nvp->column = 1;
	nvp->pos += (eoc - sol) + 1;
	return IDLE;
}