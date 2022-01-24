#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct qede_dev {TYPE_3__* arfs; int /*<<< orphan*/  cdev; TYPE_2__* ops; TYPE_1__* pdev; } ;
struct TYPE_8__ {scalar_t__ mode; } ;
struct qede_arfs_fltr_node {TYPE_4__ tuple; int /*<<< orphan*/  node; int /*<<< orphan*/  mapping; int /*<<< orphan*/  buf_len; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int filter_count; scalar_t__ mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* configure_arfs_searcher ) (int /*<<< orphan*/ ,scalar_t__) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qede_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ QED_FILTER_CONFIG_MODE_DISABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qede_dev*,struct qede_arfs_fltr_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC8(struct qede_dev *edev,
				      struct qede_arfs_fltr_node *fltr,
				      u16 bucket_idx)
{
	fltr->mapping = FUNC3(&edev->pdev->dev, fltr->data,
				       fltr->buf_len, DMA_TO_DEVICE);
	if (FUNC4(&edev->pdev->dev, fltr->mapping)) {
		FUNC0(edev, "Failed to map DMA memory for rule\n");
		FUNC6(edev, fltr);
		return -ENOMEM;
	}

	FUNC1(&fltr->node);
	FUNC5(&fltr->node,
		       FUNC2(edev, bucket_idx));

	edev->arfs->filter_count++;
	if (edev->arfs->filter_count == 1 &&
	    edev->arfs->mode == QED_FILTER_CONFIG_MODE_DISABLE) {
		edev->ops->configure_arfs_searcher(edev->cdev,
						   fltr->tuple.mode);
		edev->arfs->mode = fltr->tuple.mode;
	}

	return 0;
}