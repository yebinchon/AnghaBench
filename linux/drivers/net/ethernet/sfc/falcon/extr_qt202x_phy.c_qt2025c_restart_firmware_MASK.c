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
struct ef4_nic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct ef4_nic *efx)
{
	/* Restart microcontroller execution of firmware from RAM */
	FUNC0(efx, 3, 0xe854, 0x00c0);
	FUNC0(efx, 3, 0xe854, 0x0040);
	FUNC1(50);
}