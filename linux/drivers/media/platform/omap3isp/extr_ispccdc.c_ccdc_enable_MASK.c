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
struct isp_ccdc_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isp_ccdc_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_ccdc_device*,int) ; 
 scalar_t__ FUNC2 (struct isp_ccdc_device*) ; 

__attribute__((used)) static void FUNC3(struct isp_ccdc_device *ccdc)
{
	if (FUNC2(ccdc))
		FUNC1(ccdc, 1);
	FUNC0(ccdc, 1);
}