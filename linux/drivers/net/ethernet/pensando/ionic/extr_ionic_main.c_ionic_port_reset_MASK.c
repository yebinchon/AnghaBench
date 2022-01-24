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
struct ionic_dev {scalar_t__ port_info_pa; int /*<<< orphan*/ * port_info; int /*<<< orphan*/  port_info_sz; } ;
struct ionic {int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_cmd_lock; struct ionic_dev idev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVCMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ionic_dev*) ; 
 int FUNC3 (struct ionic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct ionic *ionic)
{
	struct ionic_dev *idev = &ionic->idev;
	int err;

	if (!idev->port_info)
		return 0;

	FUNC4(&ionic->dev_cmd_lock);
	FUNC2(idev);
	err = FUNC3(ionic, DEVCMD_TIMEOUT);
	FUNC5(&ionic->dev_cmd_lock);

	FUNC1(ionic->dev, idev->port_info_sz,
			  idev->port_info, idev->port_info_pa);

	idev->port_info = NULL;
	idev->port_info_pa = 0;

	if (err)
		FUNC0(ionic->dev, "Failed to reset port\n");

	return err;
}