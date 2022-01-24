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
struct seq_file {struct bdisp_dev* private; } ;
struct bdisp_dev {int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLT_ACK ; 
 int /*<<< orphan*/  BLT_AQ1_CTL ; 
 int /*<<< orphan*/  BLT_AQ1_IP ; 
 int /*<<< orphan*/  BLT_AQ1_LNA ; 
 int /*<<< orphan*/  BLT_AQ1_STA ; 
 int /*<<< orphan*/  BLT_CIC ; 
 int /*<<< orphan*/  BLT_CTL ; 
 int /*<<< orphan*/  BLT_DEI ; 
 int /*<<< orphan*/  BLT_FCTL ; 
 scalar_t__ BLT_HFC_N ; 
 int /*<<< orphan*/  BLT_HFP ; 
 int /*<<< orphan*/  BLT_INS ; 
 int /*<<< orphan*/  BLT_ITM0 ; 
 int /*<<< orphan*/  BLT_ITS ; 
 int /*<<< orphan*/  BLT_IVMX0 ; 
 int /*<<< orphan*/  BLT_IVMX1 ; 
 int /*<<< orphan*/  BLT_IVMX2 ; 
 int /*<<< orphan*/  BLT_IVMX3 ; 
 unsigned int BLT_NB_H_COEF ; 
 unsigned int BLT_NB_V_COEF ; 
 int /*<<< orphan*/  BLT_NIP ; 
 int /*<<< orphan*/  BLT_OVMX0 ; 
 int /*<<< orphan*/  BLT_OVMX1 ; 
 int /*<<< orphan*/  BLT_OVMX2 ; 
 int /*<<< orphan*/  BLT_OVMX3 ; 
 int /*<<< orphan*/  BLT_PLUGS1_CHZ ; 
 int /*<<< orphan*/  BLT_PLUGS1_MSZ ; 
 int /*<<< orphan*/  BLT_PLUGS1_OP2 ; 
 int /*<<< orphan*/  BLT_PLUGS1_PGZ ; 
 int /*<<< orphan*/  BLT_PLUGS2_CHZ ; 
 int /*<<< orphan*/  BLT_PLUGS2_MSZ ; 
 int /*<<< orphan*/  BLT_PLUGS2_OP2 ; 
 int /*<<< orphan*/  BLT_PLUGS2_PGZ ; 
 int /*<<< orphan*/  BLT_PLUGS3_CHZ ; 
 int /*<<< orphan*/  BLT_PLUGS3_MSZ ; 
 int /*<<< orphan*/  BLT_PLUGS3_OP2 ; 
 int /*<<< orphan*/  BLT_PLUGS3_PGZ ; 
 int /*<<< orphan*/  BLT_PLUGT_CHZ ; 
 int /*<<< orphan*/  BLT_PLUGT_MSZ ; 
 int /*<<< orphan*/  BLT_PLUGT_OP2 ; 
 int /*<<< orphan*/  BLT_PLUGT_PGZ ; 
 int /*<<< orphan*/  BLT_RSF ; 
 int /*<<< orphan*/  BLT_RZI ; 
 int /*<<< orphan*/  BLT_S1BA ; 
 int /*<<< orphan*/  BLT_S1TY ; 
 int /*<<< orphan*/  BLT_S1XY ; 
 int /*<<< orphan*/  BLT_S2BA ; 
 int /*<<< orphan*/  BLT_S2SZ ; 
 int /*<<< orphan*/  BLT_S2TY ; 
 int /*<<< orphan*/  BLT_S2XY ; 
 int /*<<< orphan*/  BLT_S3BA ; 
 int /*<<< orphan*/  BLT_S3SZ ; 
 int /*<<< orphan*/  BLT_S3TY ; 
 int /*<<< orphan*/  BLT_S3XY ; 
 int /*<<< orphan*/  BLT_STA1 ; 
 int /*<<< orphan*/  BLT_TBA ; 
 int /*<<< orphan*/  BLT_TSZ ; 
 int /*<<< orphan*/  BLT_TTY ; 
 int /*<<< orphan*/  BLT_TXY ; 
 scalar_t__ BLT_VFC_N ; 
 int /*<<< orphan*/  BLT_VFP ; 
 scalar_t__ BLT_Y_HFC_N ; 
 int /*<<< orphan*/  BLT_Y_HFP ; 
 int /*<<< orphan*/  BLT_Y_RSF ; 
 int /*<<< orphan*/  BLT_Y_RZI ; 
 scalar_t__ BLT_Y_VFC_N ; 
 int /*<<< orphan*/  BLT_Y_VFP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *data)
{
	struct bdisp_dev *bdisp = s->private;
	int ret;
	unsigned int i;

	ret = FUNC1(bdisp->dev);
	if (ret < 0) {
		FUNC5(s, "Cannot wake up IP\n");
		return 0;
	}

	FUNC4(s, "Reg @ = 0x%p\n", bdisp->regs);

	FUNC5(s, "\nStatic:\n");
	FUNC0(BLT_CTL);
	FUNC0(BLT_ITS);
	FUNC0(BLT_STA1);
	FUNC0(BLT_AQ1_CTL);
	FUNC0(BLT_AQ1_IP);
	FUNC0(BLT_AQ1_LNA);
	FUNC0(BLT_AQ1_STA);
	FUNC0(BLT_ITM0);

	FUNC5(s, "\nPlugs:\n");
	FUNC0(BLT_PLUGS1_OP2);
	FUNC0(BLT_PLUGS1_CHZ);
	FUNC0(BLT_PLUGS1_MSZ);
	FUNC0(BLT_PLUGS1_PGZ);
	FUNC0(BLT_PLUGS2_OP2);
	FUNC0(BLT_PLUGS2_CHZ);
	FUNC0(BLT_PLUGS2_MSZ);
	FUNC0(BLT_PLUGS2_PGZ);
	FUNC0(BLT_PLUGS3_OP2);
	FUNC0(BLT_PLUGS3_CHZ);
	FUNC0(BLT_PLUGS3_MSZ);
	FUNC0(BLT_PLUGS3_PGZ);
	FUNC0(BLT_PLUGT_OP2);
	FUNC0(BLT_PLUGT_CHZ);
	FUNC0(BLT_PLUGT_MSZ);
	FUNC0(BLT_PLUGT_PGZ);

	FUNC5(s, "\nNode:\n");
	FUNC0(BLT_NIP);
	FUNC0(BLT_CIC);
	FUNC0(BLT_INS);
	FUNC0(BLT_ACK);
	FUNC0(BLT_TBA);
	FUNC0(BLT_TTY);
	FUNC0(BLT_TXY);
	FUNC0(BLT_TSZ);
	FUNC0(BLT_S1BA);
	FUNC0(BLT_S1TY);
	FUNC0(BLT_S1XY);
	FUNC0(BLT_S2BA);
	FUNC0(BLT_S2TY);
	FUNC0(BLT_S2XY);
	FUNC0(BLT_S2SZ);
	FUNC0(BLT_S3BA);
	FUNC0(BLT_S3TY);
	FUNC0(BLT_S3XY);
	FUNC0(BLT_S3SZ);
	FUNC0(BLT_FCTL);
	FUNC0(BLT_RSF);
	FUNC0(BLT_RZI);
	FUNC0(BLT_HFP);
	FUNC0(BLT_VFP);
	FUNC0(BLT_Y_RSF);
	FUNC0(BLT_Y_RZI);
	FUNC0(BLT_Y_HFP);
	FUNC0(BLT_Y_VFP);
	FUNC0(BLT_IVMX0);
	FUNC0(BLT_IVMX1);
	FUNC0(BLT_IVMX2);
	FUNC0(BLT_IVMX3);
	FUNC0(BLT_OVMX0);
	FUNC0(BLT_OVMX1);
	FUNC0(BLT_OVMX2);
	FUNC0(BLT_OVMX3);
	FUNC0(BLT_DEI);

	FUNC5(s, "\nFilter:\n");
	for (i = 0; i < BLT_NB_H_COEF; i++) {
		FUNC4(s, "BLT_HFC%d \t0x%08X\n", i,
			   FUNC3(bdisp->regs + BLT_HFC_N + i * 4));
	}
	for (i = 0; i < BLT_NB_V_COEF; i++) {
		FUNC4(s, "BLT_VFC%d \t0x%08X\n", i,
			   FUNC3(bdisp->regs + BLT_VFC_N + i * 4));
	}

	FUNC5(s, "\nLuma filter:\n");
	for (i = 0; i < BLT_NB_H_COEF; i++) {
		FUNC4(s, "BLT_Y_HFC%d \t0x%08X\n", i,
			   FUNC3(bdisp->regs + BLT_Y_HFC_N + i * 4));
	}
	for (i = 0; i < BLT_NB_V_COEF; i++) {
		FUNC4(s, "BLT_Y_VFC%d \t0x%08X\n", i,
			   FUNC3(bdisp->regs + BLT_Y_VFC_N + i * 4));
	}

	FUNC2(bdisp->dev);

	return 0;
}