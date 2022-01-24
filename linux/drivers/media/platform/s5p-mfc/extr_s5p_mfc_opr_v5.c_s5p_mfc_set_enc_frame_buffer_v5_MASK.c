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
struct s5p_mfc_ctx {struct s5p_mfc_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  S5P_FIMV_ENC_SI_CH0_CUR_C_ADR ; 
 int /*<<< orphan*/  S5P_FIMV_ENC_SI_CH0_CUR_Y_ADR ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_mfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct s5p_mfc_ctx *ctx,
		unsigned long y_addr, unsigned long c_addr)
{
	struct s5p_mfc_dev *dev = ctx->dev;

	FUNC1(dev, FUNC0(y_addr), S5P_FIMV_ENC_SI_CH0_CUR_Y_ADR);
	FUNC1(dev, FUNC0(c_addr), S5P_FIMV_ENC_SI_CH0_CUR_C_ADR);
}