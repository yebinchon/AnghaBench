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
struct smsc911x_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_CFG ; 
 unsigned int GPIO_CFG_EEPR_EN_ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc911x_data*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct smsc911x_data *pdata)
{
	unsigned int temp = FUNC1(pdata, GPIO_CFG);
	temp &= ~GPIO_CFG_EEPR_EN_;
	FUNC2(pdata, GPIO_CFG, temp);
	FUNC0(1);
}