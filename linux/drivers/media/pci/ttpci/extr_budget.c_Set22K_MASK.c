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
struct saa7146_dev {int dummy; } ;
struct budget {struct saa7146_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7146_GPIO_OUTHI ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTLO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct budget*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 (struct budget *budget, int state)
{
	struct saa7146_dev *dev=budget->dev;
	FUNC0(2, "budget: %p\n", budget);
	FUNC1(dev, 3, (state ? SAA7146_GPIO_OUTHI : SAA7146_GPIO_OUTLO));
}