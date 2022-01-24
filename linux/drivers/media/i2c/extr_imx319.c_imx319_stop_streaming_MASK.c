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
struct imx319 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX319_MODE_STANDBY ; 
 int /*<<< orphan*/  IMX319_REG_MODE_SELECT ; 
 int FUNC0 (struct imx319*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct imx319 *imx319)
{
	return FUNC0(imx319, IMX319_REG_MODE_SELECT,
				1, IMX319_MODE_STANDBY);
}