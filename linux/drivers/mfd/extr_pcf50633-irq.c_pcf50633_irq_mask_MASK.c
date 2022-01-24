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
struct pcf50633 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct pcf50633*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC2(struct pcf50633 *pcf, int irq)
{
	FUNC1(pcf->dev, "Masking IRQ %d\n", irq);

	return FUNC0(pcf, irq, 1);
}