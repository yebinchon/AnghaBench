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
struct timer_list {int dummy; } ;
struct au0828_dmaqueue {int dummy; } ;
struct TYPE_3__ {struct au0828_buffer* vbi_buf; } ;
struct au0828_dev {int vbi_timeout_running; int /*<<< orphan*/  slock; int /*<<< orphan*/  vbi_timeout; TYPE_1__ isoc_ctl; struct au0828_dmaqueue vbiq; } ;
struct TYPE_4__ {int /*<<< orphan*/  vb2_buf; } ;
struct au0828_buffer {int /*<<< orphan*/  length; TYPE_2__ vb; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*,struct au0828_dmaqueue*,struct au0828_buffer*) ; 
 struct au0828_dev* dev ; 
 struct au0828_dev* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct au0828_dmaqueue*,struct au0828_buffer**) ; 
 int /*<<< orphan*/  vbi_timeout ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct au0828_dev *dev = FUNC1(dev, t, vbi_timeout);
	struct au0828_dmaqueue *dma_q = &dev->vbiq;
	struct au0828_buffer *buf;
	unsigned char *vbi_data;
	unsigned long flags = 0;

	FUNC4(&dev->slock, flags);

	buf = dev->isoc_ctl.vbi_buf;
	if (buf != NULL) {
		vbi_data = FUNC6(&buf->vb.vb2_buf, 0);
		FUNC2(vbi_data, 0x00, buf->length);
		FUNC0(dev, dma_q, buf);
	}
	FUNC7(dma_q, &buf);

	if (dev->vbi_timeout_running == 1)
		FUNC3(&dev->vbi_timeout, jiffies + (HZ / 10));
	FUNC5(&dev->slock, flags);
}