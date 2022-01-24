#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct lbs_private {int* current_addr; int fwrelease; int regioncode; int copied_hwaddr; TYPE_2__* mesh_dev; TYPE_3__* dev; void* fwcapinfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct cmd_ds_get_hw_spec {int /*<<< orphan*/  permanentaddr; int /*<<< orphan*/  regioncode; int /*<<< orphan*/  version; int /*<<< orphan*/  hwifversion; int /*<<< orphan*/  fwrelease; int /*<<< orphan*/  fwcapinfo; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_6__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_GET_HW_SPEC ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 size_t MRVDRV_MAX_REGION_CODE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ MRVL_FW_V4 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_get_hw_spec*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* lbs_region_code_to_index ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cmd_ds_get_hw_spec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,...) ; 

int FUNC10(struct lbs_private *priv)
{
	struct cmd_ds_get_hw_spec cmd;
	int ret = -1;
	u32 i;

	FUNC8(&cmd, 0, sizeof(cmd));
	cmd.hdr.size = FUNC1(sizeof(cmd));
	FUNC6(cmd.permanentaddr, priv->current_addr, ETH_ALEN);
	ret = FUNC2(priv, CMD_GET_HW_SPEC, &cmd);
	if (ret)
		goto out;

	priv->fwcapinfo = FUNC5(cmd.fwcapinfo);

	/* The firmware release is in an interesting format: the patch
	 * level is in the most significant nibble ... so fix that: */
	priv->fwrelease = FUNC5(cmd.fwrelease);
	priv->fwrelease = (priv->fwrelease << 8) |
		(priv->fwrelease >> 24 & 0xff);

	/* Some firmware capabilities:
	 * CF card    firmware 5.0.16p0:   cap 0x00000303
	 * USB dongle firmware 5.110.17p2: cap 0x00000303
	 */
	FUNC9(priv->dev, "%pM, fw %u.%u.%up%u, cap 0x%08x\n",
		cmd.permanentaddr,
		priv->fwrelease >> 24 & 0xff,
		priv->fwrelease >> 16 & 0xff,
		priv->fwrelease >>  8 & 0xff,
		priv->fwrelease       & 0xff,
		priv->fwcapinfo);
	FUNC3("GET_HW_SPEC: hardware interface 0x%x, hardware spec 0x%04x\n",
		    cmd.hwifversion, cmd.version);

	/* Clamp region code to 8-bit since FW spec indicates that it should
	 * only ever be 8-bit, even though the field size is 16-bit.  Some firmware
	 * returns non-zero high 8 bits here.
	 *
	 * Firmware version 4.0.102 used in CF8381 has region code shifted.  We
	 * need to check for this problem and handle it properly.
	 */
	if (FUNC0(priv->fwrelease) == MRVL_FW_V4)
		priv->regioncode = (FUNC4(cmd.regioncode) >> 8) & 0xFF;
	else
		priv->regioncode = FUNC4(cmd.regioncode) & 0xFF;

	for (i = 0; i < MRVDRV_MAX_REGION_CODE; i++) {
		/* use the region code to search for the index */
		if (priv->regioncode == lbs_region_code_to_index[i])
			break;
	}

	/* if it's unidentified region code, use the default (USA) */
	if (i >= MRVDRV_MAX_REGION_CODE) {
		priv->regioncode = 0x10;
		FUNC9(priv->dev,
			    "unidentified region code; using the default (USA)\n");
	}

	if (priv->current_addr[0] == 0xff)
		FUNC7(priv->current_addr, cmd.permanentaddr, ETH_ALEN);

	if (!priv->copied_hwaddr) {
		FUNC6(priv->dev->dev_addr, priv->current_addr, ETH_ALEN);
		if (priv->mesh_dev)
			FUNC6(priv->mesh_dev->dev_addr,
				priv->current_addr, ETH_ALEN);
		priv->copied_hwaddr = 1;
	}

out:
	return ret;
}