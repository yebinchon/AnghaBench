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
struct elm_info {int ecc_steps; } ;
struct elm_errorvec {int error_count; int* error_loc; int error_uncorrectable; scalar_t__ error_reported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ECC_CORRECTABLE_MASK ; 
 int ECC_ERROR_LOCATION_MASK ; 
 int ECC_NB_ERRORS_MASK ; 
 int ELM_ERROR_LOCATION_0 ; 
 int /*<<< orphan*/  ELM_IRQSTATUS ; 
 int ELM_LOCATION_STATUS ; 
 int ERROR_LOCATION_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct elm_info*,int,int) ; 
 int FUNC2 (struct elm_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct elm_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct elm_info *info,
		struct elm_errorvec *err_vec)
{
	int i, j, errors = 0;
	int offset;
	u32 reg_val;

	for (i = 0; i < info->ecc_steps; i++) {

		/* Check error reported */
		if (err_vec[i].error_reported) {
			offset = ELM_LOCATION_STATUS + ERROR_LOCATION_SIZE * i;
			reg_val = FUNC2(info, offset);

			/* Check correctable error or not */
			if (reg_val & ECC_CORRECTABLE_MASK) {
				offset = ELM_ERROR_LOCATION_0 +
					ERROR_LOCATION_SIZE * i;

				/* Read count of correctable errors */
				err_vec[i].error_count = reg_val &
					ECC_NB_ERRORS_MASK;

				/* Update the error locations in error vector */
				for (j = 0; j < err_vec[i].error_count; j++) {

					reg_val = FUNC2(info, offset);
					err_vec[i].error_loc[j] = reg_val &
						ECC_ERROR_LOCATION_MASK;

					/* Update error location register */
					offset += 4;
				}

				errors += err_vec[i].error_count;
			} else {
				err_vec[i].error_uncorrectable = true;
			}

			/* Clearing interrupts for processed error vectors */
			FUNC3(info, ELM_IRQSTATUS, FUNC0(i));

			/* Disable page mode */
			FUNC1(info, i, false);
		}
	}
}