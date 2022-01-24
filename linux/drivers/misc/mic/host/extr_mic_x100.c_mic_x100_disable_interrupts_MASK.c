#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mic_mw {int dummy; } ;
struct TYPE_2__ {int num_vectors; } ;
struct mic_device {TYPE_1__ irq_info; struct mic_mw mmio; } ;

/* Variables and functions */
 int MIC_X100_SBOX_BASE_ADDRESS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int MIC_X100_SBOX_SIAC0 ; 
 int MIC_X100_SBOX_SICC0 ; 
 int MIC_X100_SBOX_SICE0 ; 
 int FUNC2 (struct mic_mw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mic_mw*,int,int) ; 

__attribute__((used)) static void FUNC4(struct mic_device *mdev)
{
	u32 reg;
	struct mic_mw *mw = &mdev->mmio;
	u32 sice0 = MIC_X100_SBOX_BASE_ADDRESS + MIC_X100_SBOX_SICE0;
	u32 siac0 = MIC_X100_SBOX_BASE_ADDRESS + MIC_X100_SBOX_SIAC0;
	u32 sicc0 = MIC_X100_SBOX_BASE_ADDRESS + MIC_X100_SBOX_SICC0;

	reg = FUNC2(mw, sice0);
	FUNC3(mw, reg, sicc0);

	if (mdev->irq_info.num_vectors > 1) {
		reg = FUNC2(mw, siac0);
		reg &= ~(FUNC0(0xf) |
			FUNC1(0xff));
		FUNC3(mw, reg, siac0);
	}
}