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
struct vb2_queue {struct saa7134_dmaqueue* drv_priv; } ;
struct saa7134_dmaqueue {struct saa7134_dev* dev; } ;
struct saa7134_dev {scalar_t__ empress_started; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7134_AUDIO_MUTE_CTRL ; 
 int /*<<< orphan*/  SAA7134_SPECIAL_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_queue*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct vb2_queue *vq)
{
	struct saa7134_dmaqueue *dmaq = vq->drv_priv;
	struct saa7134_dev *dev = dmaq->dev;

	FUNC1(vq);
	FUNC3(SAA7134_SPECIAL_MODE, 0x00);
	FUNC0(20);
	FUNC3(SAA7134_SPECIAL_MODE, 0x01);
	FUNC0(100);
	/* Mute audio */
	FUNC3(SAA7134_AUDIO_MUTE_CTRL,
			FUNC2(SAA7134_AUDIO_MUTE_CTRL) | (1 << 6));
	dev->empress_started = 0;
}