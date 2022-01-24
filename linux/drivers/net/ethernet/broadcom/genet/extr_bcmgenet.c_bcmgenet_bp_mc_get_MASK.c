#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct bcmgenet_priv {TYPE_1__* hw_params; scalar_t__ base; } ;
struct TYPE_2__ {scalar_t__ tbuf_offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bcmgenet_priv*) ; 
 scalar_t__ TBUF_BP_MC ; 
 int /*<<< orphan*/  TBUF_BP_MC_V1 ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline u32 FUNC3(struct bcmgenet_priv *priv)
{
	if (FUNC0(priv))
		return FUNC1(priv, TBUF_BP_MC_V1);
	else
		return FUNC2(priv->base +
				      priv->hw_params->tbuf_offset + TBUF_BP_MC);
}