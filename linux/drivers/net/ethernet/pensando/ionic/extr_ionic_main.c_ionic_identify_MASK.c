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
struct TYPE_4__ {int /*<<< orphan*/  driver_ver_str; int /*<<< orphan*/  os_type; } ;
struct ionic_identity {int /*<<< orphan*/  dev; TYPE_2__ drv; } ;
struct ionic_dev {TYPE_1__* dev_cmd_regs; } ;
struct ionic {int /*<<< orphan*/  dev_cmd_lock; struct ionic_dev idev; struct ionic_identity ident; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVCMD_TIMEOUT ; 
 int /*<<< orphan*/  IONIC_DRV_VERSION ; 
 int /*<<< orphan*/  IONIC_IDENTITY_VERSION_1 ; 
 int /*<<< orphan*/  IONIC_OS_TYPE_LINUX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ionic*) ; 
 int /*<<< orphan*/  FUNC2 (struct ionic_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ionic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct ionic_identity*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC11(struct ionic *ionic)
{
	struct ionic_identity *ident = &ionic->ident;
	struct ionic_dev *idev = &ionic->idev;
	size_t sz;
	int err;

	FUNC6(ident, 0, sizeof(*ident));

	ident->drv.os_type = FUNC0(IONIC_OS_TYPE_LINUX);
	FUNC10(ident->drv.driver_ver_str, IONIC_DRV_VERSION,
		sizeof(ident->drv.driver_ver_str) - 1);

	FUNC8(&ionic->dev_cmd_lock);

	sz = FUNC7(sizeof(ident->drv), sizeof(idev->dev_cmd_regs->data));
	FUNC5(&idev->dev_cmd_regs->data, &ident->drv, sz);

	FUNC2(idev, IONIC_IDENTITY_VERSION_1);
	err = FUNC3(ionic, DEVCMD_TIMEOUT);
	if (!err) {
		sz = FUNC7(sizeof(ident->dev), sizeof(idev->dev_cmd_regs->data));
		FUNC4(&ident->dev, &idev->dev_cmd_regs->data, sz);
	}

	FUNC9(&ionic->dev_cmd_lock);

	if (err)
		goto err_out_unmap;

	FUNC1(ionic);

	return 0;

err_out_unmap:
	return err;
}