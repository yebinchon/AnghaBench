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
struct ionic_lif {TYPE_1__* ionic; int /*<<< orphan*/  index; } ;
struct ionic_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_cmd_lock; struct ionic_dev idev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVCMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ionic_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ionic_lif *lif)
{
	struct ionic_dev *idev = &lif->ionic->idev;

	FUNC2(&lif->ionic->dev_cmd_lock);
	FUNC0(idev, lif->index);
	FUNC1(lif->ionic, DEVCMD_TIMEOUT);
	FUNC3(&lif->ionic->dev_cmd_lock);
}