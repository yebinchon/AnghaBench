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
struct rcar_csi2 {int /*<<< orphan*/  dev; int /*<<< orphan*/  rstc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHTC_REG ; 
 int /*<<< orphan*/  PHTC_TESTCLR ; 
 int /*<<< orphan*/  PHYCNT_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_csi2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct rcar_csi2 *priv)
{
	FUNC1(priv, PHYCNT_REG, 0);
	FUNC1(priv, PHTC_REG, PHTC_TESTCLR);
	FUNC2(priv->rstc);
	FUNC3(100, 150);
	FUNC0(priv->dev);
}