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
struct bttv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_GPIO_REG_INP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct bttv *btv)
{
	FUNC3("LMLBT4x init\n");
	FUNC0(0x000000, BT848_GPIO_REG_INP);
	FUNC1(0xffffff, 0x0006C0);
	FUNC2(0x000000);
}