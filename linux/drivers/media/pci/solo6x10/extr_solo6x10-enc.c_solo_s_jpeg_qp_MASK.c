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
struct solo_dev {scalar_t__ type; int* jpeg_qp; int /*<<< orphan*/  jpeg_qp_lock; } ;

/* Variables and functions */
 scalar_t__ SOLO_DEV_6010 ; 
 unsigned int SOLO_VE_JPEG_QP_CH_H ; 
 unsigned int SOLO_VE_JPEG_QP_CH_L ; 
 int /*<<< orphan*/  FUNC0 (struct solo_dev*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct solo_dev *solo_dev, unsigned int ch,
		    unsigned int qp)
{
	unsigned long flags;
	unsigned int idx, reg;

	if ((ch > 31) || (qp > 3))
		return;

	if (solo_dev->type == SOLO_DEV_6010)
		return;

	if (ch < 16) {
		idx = 0;
		reg = SOLO_VE_JPEG_QP_CH_L;
	} else {
		ch -= 16;
		idx = 1;
		reg = SOLO_VE_JPEG_QP_CH_H;
	}
	ch *= 2;

	FUNC1(&solo_dev->jpeg_qp_lock, flags);

	solo_dev->jpeg_qp[idx] &= ~(3 << ch);
	solo_dev->jpeg_qp[idx] |= (qp & 3) << ch;

	FUNC0(solo_dev, reg, solo_dev->jpeg_qp[idx]);

	FUNC2(&solo_dev->jpeg_qp_lock, flags);
}