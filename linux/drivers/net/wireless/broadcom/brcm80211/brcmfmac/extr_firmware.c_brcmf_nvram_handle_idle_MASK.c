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
struct nvram_parser {char* data; size_t pos; size_t entry; int /*<<< orphan*/  column; int /*<<< orphan*/  line; } ;
typedef  enum nvram_parser_state { ____Placeholder_nvram_parser_state } nvram_parser_state ;

/* Variables and functions */
 int COMMENT ; 
 int IDLE ; 
 int /*<<< orphan*/  INFO ; 
 int KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 

__attribute__((used)) static enum nvram_parser_state FUNC3(struct nvram_parser *nvp)
{
	char c;

	c = nvp->data[nvp->pos];
	if (c == '\n')
		return COMMENT;
	if (FUNC2(c) || c == '\0')
		goto proceed;
	if (c == '#')
		return COMMENT;
	if (FUNC1(c)) {
		nvp->entry = nvp->pos;
		return KEY;
	}
	FUNC0(INFO, "warning: ln=%d:col=%d: ignoring invalid character\n",
		  nvp->line, nvp->column);
proceed:
	nvp->column++;
	nvp->pos++;
	return IDLE;
}