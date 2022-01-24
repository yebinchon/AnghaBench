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
typedef  int u32 ;
struct flite_frame {int f_width; int f_height; TYPE_1__* fmt; } ;
struct TYPE_4__ {int /*<<< orphan*/  vdev; } ;
struct fimc_lite {scalar_t__ regs; TYPE_2__ ve; } ;
struct TYPE_3__ {int mbus_code; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 scalar_t__ FLITE_REG_CIGCTRL ; 
 int FLITE_REG_CIGCTRL_FMT_MASK ; 
 scalar_t__ FLITE_REG_CISRCSIZE ; 
 int FLITE_REG_CISRCSIZE_ORDER422_MASK ; 
 int FLITE_REG_CISRCSIZE_SIZE_CAM_MASK ; 
 int FUNC1 (scalar_t__) ; 
 int** src_pixfmt_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(struct fimc_lite *dev, struct flite_frame *f)
{
	u32 pixelcode = f->fmt->mbus_code;
	int i = FUNC0(src_pixfmt_map);
	u32 cfg;

	while (--i) {
		if (src_pixfmt_map[i][0] == pixelcode)
			break;
	}

	if (i == 0 && src_pixfmt_map[i][0] != pixelcode) {
		FUNC2(&dev->ve.vdev,
			 "Unsupported pixel code, falling back to %#08x\n",
			 src_pixfmt_map[i][0]);
	}

	cfg = FUNC1(dev->regs + FLITE_REG_CIGCTRL);
	cfg &= ~FLITE_REG_CIGCTRL_FMT_MASK;
	cfg |= src_pixfmt_map[i][2];
	FUNC3(cfg, dev->regs + FLITE_REG_CIGCTRL);

	cfg = FUNC1(dev->regs + FLITE_REG_CISRCSIZE);
	cfg &= ~(FLITE_REG_CISRCSIZE_ORDER422_MASK |
		 FLITE_REG_CISRCSIZE_SIZE_CAM_MASK);
	cfg |= (f->f_width << 16) | f->f_height;
	cfg |= src_pixfmt_map[i][1];
	FUNC3(cfg, dev->regs + FLITE_REG_CISRCSIZE);
}