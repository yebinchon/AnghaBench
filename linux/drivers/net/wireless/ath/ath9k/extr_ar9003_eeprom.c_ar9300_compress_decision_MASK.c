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
struct ar9300_eeprom {int dummy; } ;
typedef  struct ar9300_eeprom const u8 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_HDR_LEN ; 
 int /*<<< orphan*/  EEPROM ; 
#define  _CompressBlock 129 
#define  _CompressNone 128 
 struct ar9300_eeprom* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,struct ar9300_eeprom const*,int,struct ar9300_eeprom const*,int) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9300_eeprom const*,struct ar9300_eeprom const*,int) ; 

__attribute__((used)) static int FUNC5(struct ath_hw *ah,
				    int it,
				    int code,
				    int reference,
				    u8 *mptr,
				    u8 *word, int length, int mdata_size)
{
	struct ath_common *common = FUNC2(ah);
	const struct ar9300_eeprom *eep = NULL;

	switch (code) {
	case _CompressNone:
		if (length != mdata_size) {
			FUNC3(common, EEPROM,
				"EEPROM structure size mismatch memory=%d eeprom=%d\n",
				mdata_size, length);
			return -1;
		}
		FUNC4(mptr, word + COMP_HDR_LEN, length);
		FUNC3(common, EEPROM,
			"restored eeprom %d: uncompressed, length %d\n",
			it, length);
		break;
	case _CompressBlock:
		if (reference != 0) {
			eep = FUNC0(reference);
			if (eep == NULL) {
				FUNC3(common, EEPROM,
					"can't find reference eeprom struct %d\n",
					reference);
				return -1;
			}
			FUNC4(mptr, eep, mdata_size);
		}
		FUNC3(common, EEPROM,
			"restore eeprom %d: block, reference %d, length %d\n",
			it, reference, length);
		FUNC1(ah, mptr, mdata_size,
					(word + COMP_HDR_LEN), length);
		break;
	default:
		FUNC3(common, EEPROM, "unknown compression code %d\n", code);
		return -1;
	}
	return 0;
}