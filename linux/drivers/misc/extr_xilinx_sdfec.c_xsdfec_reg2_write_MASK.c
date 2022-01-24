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
struct xsdfec_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ XSDFEC_LDPC_CODE_REG2_ADDR_BASE ; 
 scalar_t__ XSDFEC_LDPC_CODE_REG2_ADDR_HIGH ; 
 int XSDFEC_LDPC_REG_JUMP ; 
 int XSDFEC_REG2_MAX_SCHEDULE_LSB ; 
 int XSDFEC_REG2_MAX_SCHEDULE_MASK ; 
 int XSDFEC_REG2_NLAYERS_MAX ; 
 int XSDFEC_REG2_NLAYERS_MIN ; 
 int XSDFEC_REG2_NMQC_LSB ; 
 int XSDFEC_REG2_NNMQC_MASK ; 
 int XSDFEC_REG2_NORM_TYPE_LSB ; 
 int XSDFEC_REG2_NORM_TYPE_MASK ; 
 int XSDFEC_REG2_NO_FINAL_PARITY_LSB ; 
 int XSDFEC_REG2_NO_FINAL_PARITY_MASK ; 
 int XSDFEC_REG2_SPECIAL_QC_MASK ; 
 int XSDFEC_REG2_SPEICAL_QC_LSB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct xsdfec_dev*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct xsdfec_dev *xsdfec, u32 nlayers, u32 nmqc,
			     u32 norm_type, u32 special_qc, u32 no_final_parity,
			     u32 max_schedule, u32 offset)
{
	u32 wdata;

	if (nlayers < XSDFEC_REG2_NLAYERS_MIN ||
	    nlayers > XSDFEC_REG2_NLAYERS_MAX) {
		FUNC0(xsdfec->dev, "Nlayers is not in range");
		return -EINVAL;
	}

	if (nmqc & ~(XSDFEC_REG2_NNMQC_MASK >> XSDFEC_REG2_NMQC_LSB))
		FUNC0(xsdfec->dev, "NMQC exceeds 11 bits");
	nmqc = (nmqc << XSDFEC_REG2_NMQC_LSB) & XSDFEC_REG2_NNMQC_MASK;

	if (norm_type > 1)
		FUNC0(xsdfec->dev, "Norm type is invalid");
	norm_type = ((norm_type << XSDFEC_REG2_NORM_TYPE_LSB) &
		     XSDFEC_REG2_NORM_TYPE_MASK);
	if (special_qc > 1)
		FUNC0(xsdfec->dev, "Special QC in invalid");
	special_qc = ((special_qc << XSDFEC_REG2_SPEICAL_QC_LSB) &
		      XSDFEC_REG2_SPECIAL_QC_MASK);

	if (no_final_parity > 1)
		FUNC0(xsdfec->dev, "No final parity check invalid");
	no_final_parity =
		((no_final_parity << XSDFEC_REG2_NO_FINAL_PARITY_LSB) &
		 XSDFEC_REG2_NO_FINAL_PARITY_MASK);
	if (max_schedule &
	    ~(XSDFEC_REG2_MAX_SCHEDULE_MASK >> XSDFEC_REG2_MAX_SCHEDULE_LSB))
		FUNC0(xsdfec->dev, "Max Schedule exceeds 2 bits");
	max_schedule = ((max_schedule << XSDFEC_REG2_MAX_SCHEDULE_LSB) &
			XSDFEC_REG2_MAX_SCHEDULE_MASK);

	wdata = (max_schedule | no_final_parity | special_qc | norm_type |
		 nmqc | nlayers);

	if (XSDFEC_LDPC_CODE_REG2_ADDR_BASE + (offset * XSDFEC_LDPC_REG_JUMP) >
	    XSDFEC_LDPC_CODE_REG2_ADDR_HIGH) {
		FUNC0(xsdfec->dev, "Writing outside of LDPC reg2 space 0x%x",
			XSDFEC_LDPC_CODE_REG2_ADDR_BASE +
				(offset * XSDFEC_LDPC_REG_JUMP));
		return -EINVAL;
	}
	FUNC1(xsdfec,
			XSDFEC_LDPC_CODE_REG2_ADDR_BASE +
				(offset * XSDFEC_LDPC_REG_JUMP),
			wdata);
	return 0;
}