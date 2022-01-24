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
struct mlx4_eq {struct mlx4_dev* dev; } ;
struct mlx4_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,struct mlx4_eq*) ; 

__attribute__((used)) static irqreturn_t FUNC1(int irq, void *eq_ptr)
{
	struct mlx4_eq  *eq  = eq_ptr;
	struct mlx4_dev *dev = eq->dev;

	FUNC0(dev, eq);

	/* MSI-X vectors always belong to us */
	return IRQ_HANDLED;
}