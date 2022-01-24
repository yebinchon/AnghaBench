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
struct TYPE_4__ {int /*<<< orphan*/  config; } ;
struct ionic_identity {TYPE_2__ port; } ;
struct ionic_dev {scalar_t__ port_info_pa; int /*<<< orphan*/ * port_info; int /*<<< orphan*/  port_info_sz; TYPE_1__* dev_cmd_regs; } ;
struct ionic {int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_cmd_lock; struct ionic_dev idev; struct ionic_identity ident; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEVCMD_TIMEOUT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IONIC_PORT_ADMIN_STATE_UP ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ionic_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct ionic_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ionic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct ionic *ionic)
{
	struct ionic_identity *ident = &ionic->ident;
	struct ionic_dev *idev = &ionic->idev;
	size_t sz;
	int err;

	if (idev->port_info)
		return 0;

	idev->port_info_sz = FUNC0(sizeof(*idev->port_info), PAGE_SIZE);
	idev->port_info = FUNC2(ionic->dev, idev->port_info_sz,
					     &idev->port_info_pa,
					     GFP_KERNEL);
	if (!idev->port_info) {
		FUNC1(ionic->dev, "Failed to allocate port info, aborting\n");
		return -ENOMEM;
	}

	sz = FUNC8(sizeof(ident->port.config), sizeof(idev->dev_cmd_regs->data));

	FUNC9(&ionic->dev_cmd_lock);

	FUNC7(&idev->dev_cmd_regs->data, &ident->port.config, sz);
	FUNC4(idev);
	err = FUNC6(ionic, DEVCMD_TIMEOUT);

	FUNC5(&ionic->idev, IONIC_PORT_ADMIN_STATE_UP);
	(void)FUNC6(ionic, DEVCMD_TIMEOUT);

	FUNC10(&ionic->dev_cmd_lock);
	if (err) {
		FUNC1(ionic->dev, "Failed to init port\n");
		FUNC3(ionic->dev, idev->port_info_sz,
				  idev->port_info, idev->port_info_pa);
		idev->port_info = NULL;
		idev->port_info_pa = 0;
	}

	return err;
}