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
struct s5p_mfc_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  S5P_FIMV_HOST2RISC_CMD ; 
 int /*<<< orphan*/  S5P_FIMV_RISC2HOST_CMD ; 
 int /*<<< orphan*/  S5P_FIMV_SI_CH0_INST_ID ; 
 int /*<<< orphan*/  S5P_FIMV_SI_CH1_INST_ID ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_mfc_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct s5p_mfc_dev *dev)
{
	if (FUNC0(dev)) {
		/* Zero initialization should be done before RESET.
		 * Nothing to do here. */
	} else {
		FUNC1(dev, 0xffffffff, S5P_FIMV_SI_CH0_INST_ID);
		FUNC1(dev, 0xffffffff, S5P_FIMV_SI_CH1_INST_ID);
		FUNC1(dev, 0, S5P_FIMV_RISC2HOST_CMD);
		FUNC1(dev, 0, S5P_FIMV_HOST2RISC_CMD);
	}
}