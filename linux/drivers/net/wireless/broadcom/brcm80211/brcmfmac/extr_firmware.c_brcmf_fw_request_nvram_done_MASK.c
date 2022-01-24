#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct firmware {size_t size; scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; void* data; } ;
struct brcmf_fw_item {int flags; TYPE_2__ nv_data; } ;
struct brcmf_fw {size_t curpos; TYPE_1__* req; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus_nr; int /*<<< orphan*/  domain_nr; struct brcmf_fw_item* items; } ;

/* Variables and functions */
 int BRCMF_FW_REQF_OPTIONAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/ * FUNC0 (size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,...) ; 
 int /*<<< orphan*/ * FUNC3 (size_t*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 

__attribute__((used)) static int FUNC8(const struct firmware *fw, void *ctx)
{
	struct brcmf_fw *fwctx = ctx;
	struct brcmf_fw_item *cur;
	bool free_bcm47xx_nvram = false;
	bool kfree_nvram = false;
	u32 nvram_length = 0;
	void *nvram = NULL;
	u8 *data = NULL;
	size_t data_len;

	FUNC2(TRACE, "enter: dev=%s\n", FUNC5(fwctx->dev));

	cur = &fwctx->req->items[fwctx->curpos];

	if (fw && fw->data) {
		data = (u8 *)fw->data;
		data_len = fw->size;
	} else {
		if ((data = FUNC0(&data_len)))
			free_bcm47xx_nvram = true;
		else if ((data = FUNC3(&data_len)))
			kfree_nvram = true;
		else if (!(cur->flags & BRCMF_FW_REQF_OPTIONAL))
			goto fail;
	}

	if (data)
		nvram = FUNC4(data, data_len, &nvram_length,
					     fwctx->req->domain_nr,
					     fwctx->req->bus_nr);

	if (free_bcm47xx_nvram)
		FUNC1(data);
	if (kfree_nvram)
		FUNC6(data);

	FUNC7(fw);
	if (!nvram && !(cur->flags & BRCMF_FW_REQF_OPTIONAL))
		goto fail;

	FUNC2(TRACE, "nvram %p len %d\n", nvram, nvram_length);
	cur->nv_data.data = nvram;
	cur->nv_data.len = nvram_length;
	return 0;

fail:
	return -ENOENT;
}