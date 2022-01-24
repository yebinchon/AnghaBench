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
struct bcmgenet_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTRL2_CPU_CLEAR ; 
 int /*<<< orphan*/  INTRL2_CPU_MASK_SET ; 
 int /*<<< orphan*/  FUNC0 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bcmgenet_priv *priv)
{
	/* Mask all interrupts.*/
	FUNC0(priv, 0xFFFFFFFF, INTRL2_CPU_MASK_SET);
	FUNC0(priv, 0xFFFFFFFF, INTRL2_CPU_CLEAR);
	FUNC1(priv, 0xFFFFFFFF, INTRL2_CPU_MASK_SET);
	FUNC1(priv, 0xFFFFFFFF, INTRL2_CPU_CLEAR);
}