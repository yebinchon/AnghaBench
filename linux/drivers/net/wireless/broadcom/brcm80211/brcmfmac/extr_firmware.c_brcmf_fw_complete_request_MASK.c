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
struct brcmf_fw_item {int type; int flags; struct firmware const* binary; int /*<<< orphan*/  path; } ;
struct brcmf_fw {size_t curpos; TYPE_1__* req; } ;
struct TYPE_2__ {struct brcmf_fw_item* items; } ;

/* Variables and functions */
 int BRCMF_FW_REQF_OPTIONAL ; 
#define  BRCMF_FW_TYPE_BINARY 129 
#define  BRCMF_FW_TYPE_NVRAM 128 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct firmware const*,struct brcmf_fw*) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 

__attribute__((used)) static int FUNC4(const struct firmware *fw,
				     struct brcmf_fw *fwctx)
{
	struct brcmf_fw_item *cur = &fwctx->req->items[fwctx->curpos];
	int ret = 0;

	FUNC0(TRACE, "firmware %s %sfound\n", cur->path, fw ? "" : "not ");

	switch (cur->type) {
	case BRCMF_FW_TYPE_NVRAM:
		ret = FUNC2(fw, fwctx);
		break;
	case BRCMF_FW_TYPE_BINARY:
		if (fw)
			cur->binary = fw;
		else
			ret = -ENOENT;
		break;
	default:
		/* something fishy here so bail out early */
		FUNC1("unknown fw type: %d\n", cur->type);
		FUNC3(fw);
		ret = -EINVAL;
	}

	return (cur->flags & BRCMF_FW_REQF_OPTIONAL) ? 0 : ret;
}