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
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  ani_work; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_ANI_RUN ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct ath9k_htc_priv *priv)
{
	struct ath_common *common = FUNC0(priv->ah);
	FUNC1(&priv->ani_work);
	FUNC2(ATH_OP_ANI_RUN, &common->op_flags);
}