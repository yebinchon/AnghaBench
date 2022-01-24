#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vop_header ;
struct solo_dev {int vh_size; int nr_chans; scalar_t__ type; int enc_bw_remain; int fps; TYPE_2__** v4l2_enc; TYPE_4__* pdev; int /*<<< orphan*/ * vh_buf; int /*<<< orphan*/  vh_dma; int /*<<< orphan*/  ring_thread_wait; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {TYPE_1__* vfd; } ;
struct TYPE_8__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__ SOLO_DEV_6010 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (struct solo_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (struct solo_dev*) ; 

int FUNC9(struct solo_dev *solo_dev, unsigned nr)
{
	int i;

	FUNC3(&solo_dev->ring_thread_wait);

	solo_dev->vh_size = sizeof(vop_header);
	solo_dev->vh_buf = FUNC4(solo_dev->pdev,
						solo_dev->vh_size,
						&solo_dev->vh_dma);
	if (solo_dev->vh_buf == NULL)
		return -ENOMEM;

	for (i = 0; i < solo_dev->nr_chans; i++) {
		solo_dev->v4l2_enc[i] = FUNC6(solo_dev, i, nr);
		if (FUNC0(solo_dev->v4l2_enc[i]))
			break;
	}

	if (i != solo_dev->nr_chans) {
		int ret = FUNC1(solo_dev->v4l2_enc[i]);

		while (i--)
			FUNC7(solo_dev->v4l2_enc[i]);
		FUNC5(solo_dev->pdev, solo_dev->vh_size,
				    solo_dev->vh_buf, solo_dev->vh_dma);
		solo_dev->vh_buf = NULL;
		return ret;
	}

	if (solo_dev->type == SOLO_DEV_6010)
		solo_dev->enc_bw_remain = solo_dev->fps * 4 * 4;
	else
		solo_dev->enc_bw_remain = solo_dev->fps * 4 * 5;

	FUNC2(&solo_dev->pdev->dev, "Encoders as /dev/video%d-%d\n",
		 solo_dev->v4l2_enc[0]->vfd->num,
		 solo_dev->v4l2_enc[solo_dev->nr_chans - 1]->vfd->num);

	return FUNC8(solo_dev);
}