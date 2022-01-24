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
typedef  scalar_t__ u32 ;
struct rtsx_usb_sdmmc {int dummy; } ;

/* Variables and functions */
 int MAX_PHASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_usb_sdmmc*) ; 

__attribute__((used)) static u8 FUNC3(struct rtsx_usb_sdmmc *host, u32 phase_map)
{
	int start = 0, len = 0;
	int start_final = 0, len_final = 0;
	u8 final_phase = 0xFF;

	if (phase_map == 0) {
		FUNC0(FUNC2(host), "Phase: [map:%x]\n", phase_map);
		return final_phase;
	}

	while (start < MAX_PHASE + 1) {
		len = FUNC1(phase_map, start);
		if (len_final < len) {
			start_final = start;
			len_final = len;
		}
		start += len ? len : 1;
	}

	final_phase = (start_final + len_final / 2) & MAX_PHASE;
	FUNC0(FUNC2(host), "Phase: [map:%x] [maxlen:%d] [final:%d]\n",
		phase_map, len_final, final_phase);

	return final_phase;
}