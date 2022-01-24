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
typedef  enum vpbe_enc_timings_type { ____Placeholder_vpbe_enc_timings_type } vpbe_enc_timings_type ;

/* Variables and functions */
 int VPBE_ENC_DV_TIMINGS ; 
 int VPBE_ENC_STD ; 
 int VPBE_VERSION_1 ; 
 int VPBE_VERSION_2 ; 
 int VPBE_VERSION_3 ; 
 int /*<<< orphan*/  VPSS_VENC_CLOCK_SEL ; 
 int /*<<< orphan*/  VPSS_VPBE_CLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(int venc_type,
		       enum vpbe_enc_timings_type type,
		       unsigned int pclock)
{
	if (venc_type == VPBE_VERSION_1)
		return;

	if (venc_type == VPBE_VERSION_2 && (type == VPBE_ENC_STD || (type ==
	    VPBE_ENC_DV_TIMINGS && pclock <= 27000000))) {
		FUNC0(VPSS_VENC_CLOCK_SEL, 1);
		FUNC0(VPSS_VPBE_CLOCK, 1);
		return;
	}

	if (venc_type == VPBE_VERSION_3 && type == VPBE_ENC_STD)
		FUNC0(VPSS_VENC_CLOCK_SEL, 0);
}