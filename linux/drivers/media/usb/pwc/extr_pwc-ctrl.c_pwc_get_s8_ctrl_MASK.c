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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct pwc_device {scalar_t__ ctrl_buf; } ;
typedef  int s8 ;

/* Variables and functions */
 int FUNC0 (struct pwc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct pwc_device *pdev, u8 request, u16 value, int *data)
{
	int ret;

	ret = FUNC0(pdev, request, value, 1);
	if (ret < 0)
		return ret;

	*data = ((s8 *)pdev->ctrl_buf)[0];
	return 0;
}