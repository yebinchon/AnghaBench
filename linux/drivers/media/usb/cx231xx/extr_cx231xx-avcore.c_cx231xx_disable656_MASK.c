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
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS1_PIN_CTL0 ; 
 int /*<<< orphan*/  TS1_PIN_CTL1 ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct cx231xx *dev)
{
	u8 temp = 0;

	FUNC1(dev, TS1_PIN_CTL0, 0x00);

	FUNC0(dev, TS1_PIN_CTL1, &temp);
	temp = temp&0xFB;

	FUNC1(dev, TS1_PIN_CTL1, temp);
}