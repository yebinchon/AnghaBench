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
struct pnp_dev {int dummy; } ;
struct ene_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ene_device*,int) ; 
 struct ene_device* FUNC1 (struct pnp_dev*) ; 

__attribute__((used)) static void FUNC2(struct pnp_dev *pnp_dev)
{
	struct ene_device *dev = FUNC1(pnp_dev);
	FUNC0(dev, true);
}