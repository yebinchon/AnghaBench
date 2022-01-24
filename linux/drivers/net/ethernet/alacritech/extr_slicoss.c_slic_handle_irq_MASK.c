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
typedef  int u32 ;
struct slic_device {int dummy; } ;

/* Variables and functions */
 int SLIC_ISR_CMD ; 
 int SLIC_ISR_ERR ; 
 int SLIC_ISR_LEVENT ; 
 int SLIC_ISR_RCV ; 
 int SLIC_ISR_UPC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct slic_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct slic_device*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct slic_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct slic_device*) ; 

__attribute__((used)) static void FUNC5(struct slic_device *sdev, u32 isr,
			    unsigned int todo, unsigned int *done)
{
	if (isr & SLIC_ISR_ERR)
		FUNC0(sdev, isr);

	if (isr & SLIC_ISR_LEVENT)
		FUNC1(sdev);

	if (isr & SLIC_ISR_UPC_MASK)
		FUNC3(sdev, isr);

	if (isr & SLIC_ISR_RCV)
		FUNC2(sdev, todo, done);

	if (isr & SLIC_ISR_CMD)
		FUNC4(sdev);
}