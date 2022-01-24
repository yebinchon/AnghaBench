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
struct ath_hw {int dummy; } ;
struct ar9003_txc {int /*<<< orphan*/  ctl16; int /*<<< orphan*/  ctl15; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PacketDur0 ; 
 int /*<<< orphan*/  AR_PacketDur1 ; 
 int /*<<< orphan*/  AR_PacketDur2 ; 
 int /*<<< orphan*/  AR_PacketDur3 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ath_hw *ah, const void *ds, int index)
{
	const struct ar9003_txc *adc = ds;

	switch (index) {
	case 0:
		return FUNC0(FUNC1(adc->ctl15), AR_PacketDur0);
	case 1:
		return FUNC0(FUNC1(adc->ctl15), AR_PacketDur1);
	case 2:
		return FUNC0(FUNC1(adc->ctl16), AR_PacketDur2);
	case 3:
		return FUNC0(FUNC1(adc->ctl16), AR_PacketDur3);
	default:
		return 0;
	}
}