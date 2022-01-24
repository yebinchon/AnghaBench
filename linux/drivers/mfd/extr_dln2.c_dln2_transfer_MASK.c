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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dln2_platform_data {int /*<<< orphan*/  handle; } ;
struct dln2_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dln2_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,unsigned int,void*,unsigned int*) ; 
 struct dln2_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct dln2_platform_data* FUNC2 (TYPE_1__*) ; 

int FUNC3(struct platform_device *pdev, u16 cmd,
		  const void *obuf, unsigned obuf_len,
		  void *ibuf, unsigned *ibuf_len)
{
	struct dln2_platform_data *dln2_pdata;
	struct dln2_dev *dln2;
	u16 handle;

	dln2 = FUNC1(pdev->dev.parent);
	dln2_pdata = FUNC2(&pdev->dev);
	handle = dln2_pdata->handle;

	return FUNC0(dln2, handle, cmd, obuf, obuf_len, ibuf,
			      ibuf_len);
}