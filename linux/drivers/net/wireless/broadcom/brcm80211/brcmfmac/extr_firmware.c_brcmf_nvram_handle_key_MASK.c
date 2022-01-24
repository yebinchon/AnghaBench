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
struct nvram_parser {int state; char* data; size_t pos; size_t entry; int multi_dev_v1; int multi_dev_v2; int boardrev_found; int /*<<< orphan*/  column; int /*<<< orphan*/  line; } ;
typedef  enum nvram_parser_state { ____Placeholder_nvram_parser_state } nvram_parser_state ;

/* Variables and functions */
 int COMMENT ; 
 int /*<<< orphan*/  INFO ; 
 int VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

__attribute__((used)) static enum nvram_parser_state FUNC3(struct nvram_parser *nvp)
{
	enum nvram_parser_state st = nvp->state;
	char c;

	c = nvp->data[nvp->pos];
	if (c == '=') {
		/* ignore RAW1 by treating as comment */
		if (FUNC2(&nvp->data[nvp->entry], "RAW1", 4) == 0)
			st = COMMENT;
		else
			st = VALUE;
		if (FUNC2(&nvp->data[nvp->entry], "devpath", 7) == 0)
			nvp->multi_dev_v1 = true;
		if (FUNC2(&nvp->data[nvp->entry], "pcie/", 5) == 0)
			nvp->multi_dev_v2 = true;
		if (FUNC2(&nvp->data[nvp->entry], "boardrev", 8) == 0)
			nvp->boardrev_found = true;
	} else if (!FUNC1(c) || c == ' ') {
		FUNC0(INFO, "warning: ln=%d:col=%d: '=' expected, skip invalid key entry\n",
			  nvp->line, nvp->column);
		return COMMENT;
	}

	nvp->column++;
	nvp->pos++;
	return st;
}