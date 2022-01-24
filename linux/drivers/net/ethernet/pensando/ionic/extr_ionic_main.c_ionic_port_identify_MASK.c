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
struct ionic_identity {int /*<<< orphan*/  port; } ;
struct ionic_dev {TYPE_1__* dev_cmd_regs; } ;
struct ionic {int /*<<< orphan*/  dev_cmd_lock; struct ionic_dev idev; struct ionic_identity ident; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVCMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ionic_dev*) ; 
 int FUNC1 (struct ionic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct ionic *ionic)
{
	struct ionic_identity *ident = &ionic->ident;
	struct ionic_dev *idev = &ionic->idev;
	size_t sz;
	int err;

	FUNC4(&ionic->dev_cmd_lock);

	FUNC0(idev);
	err = FUNC1(ionic, DEVCMD_TIMEOUT);
	if (!err) {
		sz = FUNC3(sizeof(ident->port), sizeof(idev->dev_cmd_regs->data));
		FUNC2(&ident->port, &idev->dev_cmd_regs->data, sz);
	}

	FUNC5(&ionic->dev_cmd_lock);

	return err;
}