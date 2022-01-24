#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct firmware {int dummy; } ;
struct brcmf_fw_item {scalar_t__ type; char* path; } ;
struct brcmf_fw {size_t curpos; int /*<<< orphan*/  dev; TYPE_1__* req; } ;
struct TYPE_2__ {char* board_type; struct brcmf_fw_item* items; } ;

/* Variables and functions */
 int BRCMF_FW_NAME_LEN ; 
 scalar_t__ BRCMF_FW_TYPE_NVRAM ; 
 int FUNC0 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(const struct firmware **fw,
				     struct brcmf_fw *fwctx)
{
	struct brcmf_fw_item *cur = &fwctx->req->items[fwctx->curpos];
	int ret;

	/* nvram files are board-specific, first try a board-specific path */
	if (cur->type == BRCMF_FW_TYPE_NVRAM && fwctx->req->board_type) {
		char alt_path[BRCMF_FW_NAME_LEN];

		FUNC2(alt_path, cur->path, BRCMF_FW_NAME_LEN);
		/* strip .txt at the end */
		alt_path[FUNC3(alt_path) - 4] = 0;
		FUNC1(alt_path, ".", BRCMF_FW_NAME_LEN);
		FUNC1(alt_path, fwctx->req->board_type, BRCMF_FW_NAME_LEN);
		FUNC1(alt_path, ".txt", BRCMF_FW_NAME_LEN);

		ret = FUNC0(fw, alt_path, fwctx->dev);
		if (ret == 0)
			return ret;
	}

	return FUNC0(fw, cur->path, fwctx->dev);
}