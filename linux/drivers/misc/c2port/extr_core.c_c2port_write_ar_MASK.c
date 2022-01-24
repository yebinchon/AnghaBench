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
typedef  int u8 ;
struct c2port_ops {int /*<<< orphan*/  (* c2d_dir ) (struct c2port_device*,int) ;int /*<<< orphan*/  (* c2d_set ) (struct c2port_device*,int) ;} ;
struct c2port_device {struct c2port_ops* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c2port_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct c2port_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct c2port_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct c2port_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct c2port_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct c2port_device*,int) ; 

__attribute__((used)) static void FUNC6(struct c2port_device *dev, u8 addr)
{
	struct c2port_ops *ops = dev->ops;
	int i;

	/* START field */
	FUNC0(dev);

	/* INS field (11b, LSB first) */
	ops->c2d_dir(dev, 0);
	ops->c2d_set(dev, 1);
	FUNC0(dev);
	ops->c2d_set(dev, 1);
	FUNC0(dev);

	/* ADDRESS field */
	for (i = 0; i < 8; i++) {
		ops->c2d_set(dev, addr & 0x01);
		FUNC0(dev);

		addr >>= 1;
	}

	/* STOP field */
	ops->c2d_dir(dev, 1);
	FUNC0(dev);
}