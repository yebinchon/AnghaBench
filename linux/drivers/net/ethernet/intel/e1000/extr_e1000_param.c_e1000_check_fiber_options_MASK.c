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
struct e1000_adapter {int bd_number; } ;

/* Variables and functions */
 int* AutoNeg ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int num_AutoNeg ; 
 int num_Duplex ; 
 int num_Speed ; 

__attribute__((used)) static void FUNC1(struct e1000_adapter *adapter)
{
	int bd = adapter->bd_number;
	if (num_Speed > bd) {
		FUNC0("Speed not valid for fiber adapters, parameter "
			   "ignored\n");
	}

	if (num_Duplex > bd) {
		FUNC0("Duplex not valid for fiber adapters, parameter "
			   "ignored\n");
	}

	if ((num_AutoNeg > bd) && (AutoNeg[bd] != 0x20)) {
		FUNC0("AutoNeg other than 1000/Full is not valid for fiber"
			   "adapters, parameter ignored\n");
	}
}