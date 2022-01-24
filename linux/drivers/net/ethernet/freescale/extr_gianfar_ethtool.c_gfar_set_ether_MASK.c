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
typedef  int u32 ;
struct filer_table {int dummy; } ;
struct ethhdr {int* h_source; int* h_dest; int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  RQFCR_PID_DAH ; 
 int /*<<< orphan*/  RQFCR_PID_DAL ; 
 int /*<<< orphan*/  RQFCR_PID_ETY ; 
 int /*<<< orphan*/  RQFCR_PID_SAH ; 
 int /*<<< orphan*/  RQFCR_PID_SAL ; 
 int /*<<< orphan*/  RQFPR_EBC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,struct filer_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct filer_table*) ; 
 scalar_t__ FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int*) ; 

__attribute__((used)) static void FUNC5(struct ethhdr *value, struct ethhdr *mask,
			   struct filer_table *tab)
{
	u32 upper_temp_mask = 0;
	u32 lower_temp_mask = 0;

	/* Source address */
	if (!FUNC3(mask->h_source)) {
		if (FUNC4(mask->h_source)) {
			upper_temp_mask = 0xFFFFFFFF;
			lower_temp_mask = 0xFFFFFFFF;
		} else {
			upper_temp_mask = mask->h_source[0] << 16 |
					  mask->h_source[1] << 8  |
					  mask->h_source[2];
			lower_temp_mask = mask->h_source[3] << 16 |
					  mask->h_source[4] << 8  |
					  mask->h_source[5];
		}
		/* Upper 24bit */
		FUNC1(value->h_source[0] << 16 |
				   value->h_source[1] << 8  |
				   value->h_source[2],
				   upper_temp_mask, RQFCR_PID_SAH, tab);
		/* And the same for the lower part */
		FUNC1(value->h_source[3] << 16 |
				   value->h_source[4] << 8  |
				   value->h_source[5],
				   lower_temp_mask, RQFCR_PID_SAL, tab);
	}
	/* Destination address */
	if (!FUNC3(mask->h_dest)) {
		/* Special for destination is limited broadcast */
		if ((FUNC3(value->h_dest) &&
		    FUNC4(mask->h_dest))) {
			FUNC2(RQFPR_EBC, RQFPR_EBC, tab);
		} else {
			if (FUNC4(mask->h_dest)) {
				upper_temp_mask = 0xFFFFFFFF;
				lower_temp_mask = 0xFFFFFFFF;
			} else {
				upper_temp_mask = mask->h_dest[0] << 16 |
						  mask->h_dest[1] << 8  |
						  mask->h_dest[2];
				lower_temp_mask = mask->h_dest[3] << 16 |
						  mask->h_dest[4] << 8  |
						  mask->h_dest[5];
			}

			/* Upper 24bit */
			FUNC1(value->h_dest[0] << 16 |
					   value->h_dest[1] << 8  |
					   value->h_dest[2],
					   upper_temp_mask, RQFCR_PID_DAH, tab);
			/* And the same for the lower part */
			FUNC1(value->h_dest[3] << 16 |
					   value->h_dest[4] << 8  |
					   value->h_dest[5],
					   lower_temp_mask, RQFCR_PID_DAL, tab);
		}
	}

	FUNC1(FUNC0(value->h_proto),
			   FUNC0(mask->h_proto),
			   RQFCR_PID_ETY, tab);
}