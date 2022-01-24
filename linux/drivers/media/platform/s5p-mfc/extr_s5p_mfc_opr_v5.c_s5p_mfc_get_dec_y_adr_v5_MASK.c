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
 int MFC_OFFSET_SHIFT ; 
 int /*<<< orphan*/  S5P_FIMV_SI_DECODE_Y_ADR ; 
 int FUNC0 (struct s5p_mfc_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct s5p_mfc_dev *dev)
{
	return FUNC0(dev, S5P_FIMV_SI_DECODE_Y_ADR) << MFC_OFFSET_SHIFT;
}