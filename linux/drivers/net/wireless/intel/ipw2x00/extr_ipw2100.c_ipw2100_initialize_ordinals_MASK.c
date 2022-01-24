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
struct ipw2100_ordinals {int table1_size; int table2_size; int /*<<< orphan*/  table2_addr; int /*<<< orphan*/  table1_addr; } ;
struct ipw2100_priv {int /*<<< orphan*/  net_dev; struct ipw2100_ordinals ordinals; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IPW_MEM_HOST_SHARED_ORDINALS_TABLE_1 ; 
 int /*<<< orphan*/  IPW_MEM_HOST_SHARED_ORDINALS_TABLE_2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ipw2100_priv *priv)
{
	struct ipw2100_ordinals *ord = &priv->ordinals;

	FUNC0("enter\n");

	FUNC2(priv->net_dev, IPW_MEM_HOST_SHARED_ORDINALS_TABLE_1,
		      &ord->table1_addr);

	FUNC2(priv->net_dev, IPW_MEM_HOST_SHARED_ORDINALS_TABLE_2,
		      &ord->table2_addr);

	FUNC1(priv->net_dev, ord->table1_addr, &ord->table1_size);
	FUNC1(priv->net_dev, ord->table2_addr, &ord->table2_size);

	ord->table2_size &= 0x0000FFFF;

	FUNC0("table 1 size: %d\n", ord->table1_size);
	FUNC0("table 2 size: %d\n", ord->table2_size);
	FUNC0("exit\n");
}