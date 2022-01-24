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
struct s5p_mfc_dev {int /*<<< orphan*/ * mem_dev; } ;

/* Variables and functions */
 size_t BANK_L_CTX ; 
 size_t BANK_R_CTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct s5p_mfc_dev *mfc_dev)
{
	FUNC0(mfc_dev->mem_dev[BANK_L_CTX]);
	FUNC0(mfc_dev->mem_dev[BANK_R_CTX]);
	FUNC1(mfc_dev->mem_dev[BANK_L_CTX]);
	FUNC1(mfc_dev->mem_dev[BANK_R_CTX]);
}