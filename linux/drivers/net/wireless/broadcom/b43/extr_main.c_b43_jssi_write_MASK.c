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
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_SHM_SHARED ; 
 int /*<<< orphan*/  B43_SHM_SH_JSSI0 ; 
 int /*<<< orphan*/  B43_SHM_SH_JSSI1 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct b43_wldev *dev, u32 jssi)
{
	FUNC0(dev, B43_SHM_SHARED, B43_SHM_SH_JSSI0,
			(jssi & 0x0000FFFF));
	FUNC0(dev, B43_SHM_SHARED, B43_SHM_SH_JSSI1,
			(jssi & 0xFFFF0000) >> 16);
}