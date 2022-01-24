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
struct brcmf_fw_request {int n_items; struct brcmf_fw_item* items; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct brcmf_fw_item {scalar_t__ type; TYPE_1__ nv_data; int /*<<< orphan*/  binary; } ;

/* Variables and functions */
 scalar_t__ BRCMF_FW_TYPE_BINARY ; 
 scalar_t__ BRCMF_FW_TYPE_NVRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_fw_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct brcmf_fw_request *req)
{
	struct brcmf_fw_item *item;
	int i;

	for (i = 0, item = &req->items[0]; i < req->n_items; i++, item++) {
		if (item->type == BRCMF_FW_TYPE_BINARY)
			FUNC2(item->binary);
		else if (item->type == BRCMF_FW_TYPE_NVRAM)
			FUNC0(item->nv_data.data);
	}
	FUNC1(req);
}