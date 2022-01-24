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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct ath_common {scalar_t__ keymax; void* ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int AR_KEYTABLE_VALID ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,char*,scalar_t__) ; 
 int FUNC6 (int const*) ; 
 int FUNC7 (int const*) ; 

__attribute__((used)) static bool FUNC8(struct ath_common *common,
			     u16 entry, const u8 *mac)
{
	u32 macHi, macLo;
	u32 unicast_flag = AR_KEYTABLE_VALID;
	void *ah = common->ah;

	if (entry >= common->keymax) {
		FUNC5(common, "keysetmac: keycache entry %u out of range\n",
			entry);
		return false;
	}

	if (mac != NULL) {
		/*
		 * AR_KEYTABLE_VALID indicates that the address is a unicast
		 * address, which must match the transmitter address for
		 * decrypting frames.
		 * Not setting this bit allows the hardware to use the key
		 * for multicast frame decryption.
		 */
		if (mac[0] & 0x01)
			unicast_flag = 0;

		macLo = FUNC7(mac);
		macHi = FUNC6(mac + 4);
		macLo >>= 1;
		macLo |= (macHi & 1) << 31;
		macHi >>= 1;
	} else {
		macLo = macHi = 0;
	}
	FUNC2(ah);

	FUNC4(ah, FUNC0(entry), macLo);
	FUNC4(ah, FUNC1(entry), macHi | unicast_flag);

	FUNC3(ah);

	return true;
}