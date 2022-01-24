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
struct TYPE_6__ {int fpnum; int /*<<< orphan*/  dma; int /*<<< orphan*/ * addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  free_queue; int /*<<< orphan*/  table_work; int /*<<< orphan*/  request; } ;
struct TYPE_4__ {int /*<<< orphan*/  entity; } ;
struct isp_ccdc_device {int /*<<< orphan*/  ioctl_lock; TYPE_3__ fpc; TYPE_2__ lsc; TYPE_1__ subdev; int /*<<< orphan*/  video_out; } ;
struct isp_device {int /*<<< orphan*/  dev; struct isp_ccdc_device isp_ccdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_ccdc_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_ccdc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct isp_device *isp)
{
	struct isp_ccdc_device *ccdc = &isp->isp_ccdc;

	FUNC6(&ccdc->video_out);
	FUNC4(&ccdc->subdev.entity);

	/* Free LSC requests. As the CCDC is stopped there's no active request,
	 * so only the pending request and the free queue need to be handled.
	 */
	FUNC2(ccdc, ccdc->lsc.request);
	FUNC0(&ccdc->lsc.table_work);
	FUNC1(ccdc, &ccdc->lsc.free_queue);

	if (ccdc->fpc.addr != NULL)
		FUNC3(isp->dev, ccdc->fpc.fpnum * 4, ccdc->fpc.addr,
				  ccdc->fpc.dma);

	FUNC5(&ccdc->ioctl_lock);
}