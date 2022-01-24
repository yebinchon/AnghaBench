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
struct TYPE_5__ {int /*<<< orphan*/  mtu; int /*<<< orphan*/  mac; int /*<<< orphan*/  name; int /*<<< orphan*/ * queue_count; int /*<<< orphan*/  features; } ;
struct TYPE_6__ {TYPE_2__ config; int /*<<< orphan*/  max_mcast_filters; int /*<<< orphan*/  max_ucast_filters; } ;
union ionic_lif_identity {TYPE_3__ eth; int /*<<< orphan*/  capabilities; } ;
typedef  int /*<<< orphan*/  u8 ;
struct ionic_dev {TYPE_1__* dev_cmd_regs; } ;
struct ionic {int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_cmd_lock; struct ionic_dev idev; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVCMD_TIMEOUT ; 
 int /*<<< orphan*/  IONIC_IDENTITY_VERSION_1 ; 
 size_t IONIC_QTYPE_ADMINQ ; 
 size_t IONIC_QTYPE_NOTIFYQ ; 
 size_t IONIC_QTYPE_RXQ ; 
 size_t IONIC_QTYPE_TXQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ionic_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ionic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union ionic_lif_identity*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct ionic *ionic, u8 lif_type,
		       union ionic_lif_identity *lid)
{
	struct ionic_dev *idev = &ionic->idev;
	size_t sz;
	int err;

	sz = FUNC6(sizeof(*lid), sizeof(idev->dev_cmd_regs->data));

	FUNC7(&ionic->dev_cmd_lock);
	FUNC1(idev, lif_type, IONIC_IDENTITY_VERSION_1);
	err = FUNC2(ionic, DEVCMD_TIMEOUT);
	FUNC5(lid, &idev->dev_cmd_regs->data, sz);
	FUNC8(&ionic->dev_cmd_lock);
	if (err)
		return (err);

	FUNC0(ionic->dev, "capabilities 0x%llx\n",
		FUNC4(lid->capabilities));

	FUNC0(ionic->dev, "eth.max_ucast_filters %d\n",
		FUNC3(lid->eth.max_ucast_filters));
	FUNC0(ionic->dev, "eth.max_mcast_filters %d\n",
		FUNC3(lid->eth.max_mcast_filters));
	FUNC0(ionic->dev, "eth.features 0x%llx\n",
		FUNC4(lid->eth.config.features));
	FUNC0(ionic->dev, "eth.queue_count[IONIC_QTYPE_ADMINQ] %d\n",
		FUNC3(lid->eth.config.queue_count[IONIC_QTYPE_ADMINQ]));
	FUNC0(ionic->dev, "eth.queue_count[IONIC_QTYPE_NOTIFYQ] %d\n",
		FUNC3(lid->eth.config.queue_count[IONIC_QTYPE_NOTIFYQ]));
	FUNC0(ionic->dev, "eth.queue_count[IONIC_QTYPE_RXQ] %d\n",
		FUNC3(lid->eth.config.queue_count[IONIC_QTYPE_RXQ]));
	FUNC0(ionic->dev, "eth.queue_count[IONIC_QTYPE_TXQ] %d\n",
		FUNC3(lid->eth.config.queue_count[IONIC_QTYPE_TXQ]));
	FUNC0(ionic->dev, "eth.config.name %s\n", lid->eth.config.name);
	FUNC0(ionic->dev, "eth.config.mac %pM\n", lid->eth.config.mac);
	FUNC0(ionic->dev, "eth.config.mtu %d\n",
		FUNC3(lid->eth.config.mtu));

	return 0;
}