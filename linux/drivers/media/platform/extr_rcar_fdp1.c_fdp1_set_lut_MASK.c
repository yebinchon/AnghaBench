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
struct fdp1_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FD1_LUT_BLD_GAIN ; 
 int /*<<< orphan*/  FD1_LUT_DIF_ADJ ; 
 int /*<<< orphan*/  FD1_LUT_DIF_GAIN ; 
 int /*<<< orphan*/  FD1_LUT_MDET ; 
 int /*<<< orphan*/  FD1_LUT_SAD_ADJ ; 
 int /*<<< orphan*/  fdp1_bld_gain ; 
 int /*<<< orphan*/  fdp1_dif_gain ; 
 int /*<<< orphan*/  fdp1_diff_adj ; 
 int /*<<< orphan*/  fdp1_mdet ; 
 int /*<<< orphan*/  fdp1_sad_adj ; 
 int /*<<< orphan*/  FUNC1 (struct fdp1_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fdp1_dev *fdp1)
{
	FUNC1(fdp1, fdp1_diff_adj, FUNC0(fdp1_diff_adj),
			FD1_LUT_DIF_ADJ);
	FUNC1(fdp1, fdp1_sad_adj,  FUNC0(fdp1_sad_adj),
			FD1_LUT_SAD_ADJ);
	FUNC1(fdp1, fdp1_bld_gain, FUNC0(fdp1_bld_gain),
			FD1_LUT_BLD_GAIN);
	FUNC1(fdp1, fdp1_dif_gain, FUNC0(fdp1_dif_gain),
			FD1_LUT_DIF_GAIN);
	FUNC1(fdp1, fdp1_mdet, FUNC0(fdp1_mdet),
			FD1_LUT_MDET);
}