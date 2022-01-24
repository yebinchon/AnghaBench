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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct mic_mw {int dummy; } ;
struct mic_device {struct mic_mw mmio; } ;

/* Variables and functions */
 int MIC_X100_BSP_INTERRUPT_VECTOR ; 
 scalar_t__ MIC_X100_SBOX_APICICR7 ; 
 scalar_t__ MIC_X100_SBOX_BASE_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct mic_mw*,int,scalar_t__) ; 
 int FUNC1 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct mic_device *mdev)
{
	u32 apicicr_low;
	u64 apic_icr_offset = MIC_X100_SBOX_APICICR7;
	int vector = MIC_X100_BSP_INTERRUPT_VECTOR;
	struct mic_mw *mw = &mdev->mmio;

	/*
	 * For MIC we need to make sure we "hit"
	 * the send_icr bit (13).
	 */
	apicicr_low = (vector | (1 << 13));

	FUNC0(mw, FUNC1(mdev),
		       MIC_X100_SBOX_BASE_ADDRESS + apic_icr_offset + 4);

	/* Ensure that the interrupt is ordered w.r.t. previous stores. */
	FUNC2();
	FUNC0(mw, apicicr_low,
		       MIC_X100_SBOX_BASE_ADDRESS + apic_icr_offset);
}