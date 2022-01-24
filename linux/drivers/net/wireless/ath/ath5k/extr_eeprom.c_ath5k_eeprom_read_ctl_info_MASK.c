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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct ath5k_eeprom_info {scalar_t__ ee_version; int ee_ctls; int* ee_ctl; struct ath5k_edge_power* ee_ctl_pwr; int /*<<< orphan*/  ee_misc1; } ;
struct TYPE_2__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {TYPE_1__ ah_capabilities; } ;
struct ath5k_edge_power {int freq; int edge; int flag; } ;

/* Variables and functions */
#define  AR5K_CTL_11A 129 
 int AR5K_CTL_MODE_M ; 
#define  AR5K_CTL_TURBO 128 
 scalar_t__ FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 scalar_t__ AR5K_EEPROM_GROUP5_OFFSET ; 
 scalar_t__ AR5K_EEPROM_GROUP8_OFFSET ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 unsigned int AR5K_EEPROM_MODE_11A ; 
 unsigned int AR5K_EEPROM_MODE_11G ; 
 int FUNC3 (scalar_t__) ; 
 int AR5K_EEPROM_N_EDGES ; 
 unsigned int AR5K_EEPROM_POWER_M ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ AR5K_EEPROM_VERSION_3_3 ; 
 scalar_t__ AR5K_EEPROM_VERSION_4_0 ; 
 int FUNC6 (struct ath5k_eeprom_info*,int,unsigned int) ; 

__attribute__((used)) static int
FUNC7(struct ath5k_hw *ah)
{
	struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
	struct ath5k_edge_power *rep;
	unsigned int fmask, pmask;
	unsigned int ctl_mode;
	int i, j;
	u32 offset;
	u16 val;

	pmask = AR5K_EEPROM_POWER_M;
	fmask = FUNC1(ee->ee_version);
	offset = FUNC0(ee->ee_version);
	ee->ee_ctls = FUNC3(ee->ee_version);
	for (i = 0; i < ee->ee_ctls; i += 2) {
		FUNC4(offset++, val);
		ee->ee_ctl[i] = (val >> 8) & 0xff;
		ee->ee_ctl[i + 1] = val & 0xff;
	}

	offset = AR5K_EEPROM_GROUP8_OFFSET;
	if (ee->ee_version >= AR5K_EEPROM_VERSION_4_0)
		offset += FUNC5(ee->ee_misc1) -
			AR5K_EEPROM_GROUP5_OFFSET;
	else
		offset += FUNC2(ee->ee_version);

	rep = ee->ee_ctl_pwr;
	for (i = 0; i < ee->ee_ctls; i++) {
		switch (ee->ee_ctl[i] & AR5K_CTL_MODE_M) {
		case AR5K_CTL_11A:
		case AR5K_CTL_TURBO:
			ctl_mode = AR5K_EEPROM_MODE_11A;
			break;
		default:
			ctl_mode = AR5K_EEPROM_MODE_11G;
			break;
		}
		if (ee->ee_ctl[i] == 0) {
			if (ee->ee_version >= AR5K_EEPROM_VERSION_3_3)
				offset += 8;
			else
				offset += 7;
			rep += AR5K_EEPROM_N_EDGES;
			continue;
		}
		if (ee->ee_version >= AR5K_EEPROM_VERSION_3_3) {
			for (j = 0; j < AR5K_EEPROM_N_EDGES; j += 2) {
				FUNC4(offset++, val);
				rep[j].freq = (val >> 8) & fmask;
				rep[j + 1].freq = val & fmask;
			}
			for (j = 0; j < AR5K_EEPROM_N_EDGES; j += 2) {
				FUNC4(offset++, val);
				rep[j].edge = (val >> 8) & pmask;
				rep[j].flag = (val >> 14) & 1;
				rep[j + 1].edge = val & pmask;
				rep[j + 1].flag = (val >> 6) & 1;
			}
		} else {
			FUNC4(offset++, val);
			rep[0].freq = (val >> 9) & fmask;
			rep[1].freq = (val >> 2) & fmask;
			rep[2].freq = (val << 5) & fmask;

			FUNC4(offset++, val);
			rep[2].freq |= (val >> 11) & 0x1f;
			rep[3].freq = (val >> 4) & fmask;
			rep[4].freq = (val << 3) & fmask;

			FUNC4(offset++, val);
			rep[4].freq |= (val >> 13) & 0x7;
			rep[5].freq = (val >> 6) & fmask;
			rep[6].freq = (val << 1) & fmask;

			FUNC4(offset++, val);
			rep[6].freq |= (val >> 15) & 0x1;
			rep[7].freq = (val >> 8) & fmask;

			rep[0].edge = (val >> 2) & pmask;
			rep[1].edge = (val << 4) & pmask;

			FUNC4(offset++, val);
			rep[1].edge |= (val >> 12) & 0xf;
			rep[2].edge = (val >> 6) & pmask;
			rep[3].edge = val & pmask;

			FUNC4(offset++, val);
			rep[4].edge = (val >> 10) & pmask;
			rep[5].edge = (val >> 4) & pmask;
			rep[6].edge = (val << 2) & pmask;

			FUNC4(offset++, val);
			rep[6].edge |= (val >> 14) & 0x3;
			rep[7].edge = (val >> 8) & pmask;
		}
		for (j = 0; j < AR5K_EEPROM_N_EDGES; j++) {
			rep[j].freq = FUNC6(ee,
				rep[j].freq, ctl_mode);
		}
		rep += AR5K_EEPROM_N_EDGES;
	}

	return 0;
}