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
struct platform_device {int dummy; } ;
struct atmel_nand_controller {TYPE_2__* caps; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* remove ) (struct atmel_nand_controller*) ;} ;

/* Variables and functions */
 struct atmel_nand_controller* FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct atmel_nand_controller*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct atmel_nand_controller *nc = FUNC0(pdev);

	return nc->caps->ops->remove(nc);
}