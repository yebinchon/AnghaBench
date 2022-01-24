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
struct ispstat {scalar_t__ dma_ch; } ;
struct isp_device {struct ispstat isp_hist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ispstat*) ; 

void FUNC2(struct isp_device *isp)
{
	struct ispstat *hist = &isp->isp_hist;

	if (hist->dma_ch)
		FUNC0(hist->dma_ch);

	FUNC1(hist);
}