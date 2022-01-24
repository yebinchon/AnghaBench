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
struct c2port_ops {int /*<<< orphan*/  (* c2ck_set ) (struct c2port_device*,int) ;} ;
struct c2port_device {struct c2port_ops* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct c2port_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct c2port_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct c2port_device *dev)
{
	struct c2port_ops *ops = dev->ops;

	/* To reset the device we have to keep clock line low for at least
	 * 20us.
	 */
	FUNC0();
	ops->c2ck_set(dev, 0);
	FUNC4(25);
	ops->c2ck_set(dev, 1);
	FUNC1();

	FUNC4(1);
}