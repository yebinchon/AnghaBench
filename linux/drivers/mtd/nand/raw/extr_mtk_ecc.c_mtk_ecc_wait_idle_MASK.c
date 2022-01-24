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
struct mtk_ecc {scalar_t__ regs; struct device* dev; } ;
struct device {int dummy; } ;
typedef  enum mtk_ecc_operation { ____Placeholder_mtk_ecc_operation } mtk_ecc_operation ;

/* Variables and functions */
 int ECC_ENCODE ; 
 int ECC_IDLE_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ECC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*) ; 
 int FUNC2 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct mtk_ecc *ecc,
				     enum mtk_ecc_operation op)
{
	struct device *dev = ecc->dev;
	u32 val;
	int ret;

	ret = FUNC2(ecc->regs + FUNC0(op), val,
					val & ECC_IDLE_MASK,
					10, ECC_TIMEOUT);
	if (ret)
		FUNC1(dev, "%s NOT idle\n",
			 op == ECC_ENCODE ? "encoder" : "decoder");
}