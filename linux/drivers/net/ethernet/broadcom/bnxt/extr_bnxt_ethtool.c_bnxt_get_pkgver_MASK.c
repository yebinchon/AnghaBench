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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct bnxt {scalar_t__ fw_ver_str; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX_DIR_EXT_NONE ; 
 int /*<<< orphan*/  BNX_DIR_ORDINAL_FIRST ; 
 int /*<<< orphan*/  BNX_DIR_TYPE_PKG_LOG ; 
 int /*<<< orphan*/  BNX_PKG_LOG_FIELD_IDX_PKG_VERSION ; 
 int FW_VER_STR_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bnxt* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int,char*,char*) ; 
 int FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev)
{
	struct bnxt *bp = FUNC7(dev);
	u16 index = 0;
	char *pkgver;
	u32 pkglen;
	u8 *pkgbuf;
	int len;

	if (FUNC0(dev, BNX_DIR_TYPE_PKG_LOG,
				 BNX_DIR_ORDINAL_FIRST, BNX_DIR_EXT_NONE,
				 &index, NULL, &pkglen) != 0)
		return;

	pkgbuf = FUNC6(pkglen, GFP_KERNEL);
	if (!pkgbuf) {
		FUNC3(&bp->pdev->dev, "Unable to allocate memory for pkg version, length = %u\n",
			pkglen);
		return;
	}

	if (FUNC1(dev, index, 0, pkglen, pkgbuf))
		goto err;

	pkgver = FUNC2(BNX_PKG_LOG_FIELD_IDX_PKG_VERSION, pkgbuf,
				   pkglen);
	if (pkgver && *pkgver != 0 && FUNC4(*pkgver)) {
		len = FUNC9(bp->fw_ver_str);
		FUNC8(bp->fw_ver_str + len, FW_VER_STR_LEN - len - 1,
			 "/pkg %s", pkgver);
	}
err:
	FUNC5(pkgbuf);
}