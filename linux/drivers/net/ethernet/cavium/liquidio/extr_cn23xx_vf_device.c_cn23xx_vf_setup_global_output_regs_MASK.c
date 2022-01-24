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
struct TYPE_2__ {scalar_t__ rings_per_vf; } ;
struct octeon_device {TYPE_1__ sriov_info; } ;

/* Variables and functions */
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_BMODE ; 
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_DPTR ; 
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_ES ; 
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_ES_P ; 
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_IPTR ; 
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_NSR ; 
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_NSR_P ; 
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_ROR ; 
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_ROR_P ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct octeon_device *oct)
{
	u32 reg_val;
	u32 q_no;

	for (q_no = 0; q_no < (oct->sriov_info.rings_per_vf); q_no++) {
		FUNC4(oct, FUNC0(q_no),
				 0xFFFFFFFF);

		reg_val =
		    FUNC3(oct, FUNC1(q_no));

		reg_val &= 0xEFFFFFFFFFFFFFFFL;

		reg_val =
		    FUNC3(oct, FUNC2(q_no));

		/* clear IPTR */
		reg_val &= ~CN23XX_PKT_OUTPUT_CTL_IPTR;

		/* set DPTR */
		reg_val |= CN23XX_PKT_OUTPUT_CTL_DPTR;

		/* reset BMODE */
		reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_BMODE);

		/* No Relaxed Ordering, No Snoop, 64-bit Byte swap
		 * for Output Queue ScatterList reset ROR_P, NSR_P
		 */
		reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_ROR_P);
		reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_NSR_P);

#ifdef __LITTLE_ENDIAN_BITFIELD
		reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_ES_P);
#else
		reg_val |= (CN23XX_PKT_OUTPUT_CTL_ES_P);
#endif
		/* No Relaxed Ordering, No Snoop, 64-bit Byte swap
		 * for Output Queue Data reset ROR, NSR
		 */
		reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_ROR);
		reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_NSR);
		/* set the ES bit */
		reg_val |= (CN23XX_PKT_OUTPUT_CTL_ES);

		/* write all the selected settings */
		FUNC4(oct, FUNC2(q_no),
				 reg_val);
	}
}