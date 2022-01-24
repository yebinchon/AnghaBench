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
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int B43_MACCMD_BGNOISE ; 
 int /*<<< orphan*/  B43_MMIO_MACCMD ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev)
{
	FUNC0(dev, 0x7F7F7F7F);
	FUNC2(dev, B43_MMIO_MACCMD,
		    FUNC1(dev, B43_MMIO_MACCMD) | B43_MACCMD_BGNOISE);
}