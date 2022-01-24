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
struct v4l2_pix_format_mplane {int dummy; } ;
struct ceu_device {TYPE_1__* active; struct v4l2_pix_format_mplane v4l2_pix; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  vb2_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEU_CAPSR ; 
 int /*<<< orphan*/  CEU_CAPSR_CE ; 
 int /*<<< orphan*/  CEU_CDACR ; 
 int /*<<< orphan*/  CEU_CDAYR ; 
 scalar_t__ FUNC0 (struct v4l2_pix_format_mplane*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct ceu_device *ceudev)
{
	struct v4l2_pix_format_mplane *pix = &ceudev->v4l2_pix;
	dma_addr_t phys_addr_top;

	phys_addr_top =
		FUNC2(&ceudev->active->vb2_buf, 0);
	FUNC1(ceudev, CEU_CDAYR, phys_addr_top);

	/* Ignore CbCr plane for non multi-planar image formats. */
	if (FUNC0(pix)) {
		phys_addr_top =
			FUNC2(&ceudev->active->vb2_buf,
						      1);
		FUNC1(ceudev, CEU_CDACR, phys_addr_top);
	}

	/*
	 * Trigger new capture start: once for each frame, as we work in
	 * one-frame capture mode.
	 */
	FUNC1(ceudev, CEU_CAPSR, CEU_CAPSR_CE);

	return 0;
}