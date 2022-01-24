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
struct qcom_ethqos {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RGMII_CONFIG_FUNC_CLK_EN ; 
 int /*<<< orphan*/  RGMII_IO_MACRO_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct qcom_ethqos*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct qcom_ethqos *ethqos)
{
	FUNC0(ethqos, RGMII_CONFIG_FUNC_CLK_EN,
		      RGMII_CONFIG_FUNC_CLK_EN, RGMII_IO_MACRO_CONFIG);
}