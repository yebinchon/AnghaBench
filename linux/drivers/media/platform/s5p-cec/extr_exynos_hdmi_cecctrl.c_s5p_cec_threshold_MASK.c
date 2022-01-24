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
struct s5p_cec_dev {scalar_t__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_FILTER_THRESHOLD ; 
 scalar_t__ S5P_CEC_RX_FILTER_CTRL ; 
 scalar_t__ S5P_CEC_RX_FILTER_TH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC1(struct s5p_cec_dev *cec)
{
	FUNC0(CEC_FILTER_THRESHOLD, cec->reg + S5P_CEC_RX_FILTER_TH);
	FUNC0(0, cec->reg + S5P_CEC_RX_FILTER_CTRL);
}