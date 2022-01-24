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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  len; scalar_t__ v_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; scalar_t__ v_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; scalar_t__ v_addr; } ;
struct il_priv {TYPE_3__ ucode_boot; TYPE_2__ ucode_code; TYPE_1__ ucode_init; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct il_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct il_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct il_priv *il)
{
	__le32 *image;
	u32 len;
	int rc = 0;

	/* Try bootstrap */
	image = (__le32 *) il->ucode_boot.v_addr;
	len = il->ucode_boot.len;
	rc = FUNC3(il, image, len);
	if (rc == 0) {
		FUNC0("Bootstrap uCode is good in inst SRAM\n");
		return 0;
	}

	/* Try initialize */
	image = (__le32 *) il->ucode_init.v_addr;
	len = il->ucode_init.len;
	rc = FUNC3(il, image, len);
	if (rc == 0) {
		FUNC0("Initialize uCode is good in inst SRAM\n");
		return 0;
	}

	/* Try runtime/protocol */
	image = (__le32 *) il->ucode_code.v_addr;
	len = il->ucode_code.len;
	rc = FUNC3(il, image, len);
	if (rc == 0) {
		FUNC0("Runtime uCode is good in inst SRAM\n");
		return 0;
	}

	FUNC1("NO VALID UCODE IMAGE IN INSTRUCTION SRAM!!\n");

	/* Since nothing seems to match, show first several data entries in
	 * instruction SRAM, so maybe visual inspection will give a clue.
	 * Selection of bootstrap image (vs. other images) is arbitrary. */
	image = (__le32 *) il->ucode_boot.v_addr;
	len = il->ucode_boot.len;
	rc = FUNC2(il, image, len);

	return rc;
}