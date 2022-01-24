#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {TYPE_2__* wmi; } ;
struct TYPE_4__ {size_t multi_write_idx; int /*<<< orphan*/  multi_write_mutex; TYPE_1__* multi_write; } ;
struct TYPE_3__ {void* val; void* reg; } ;

/* Variables and functions */
 size_t MAX_CMD_NUMBER ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *hw_priv, u32 val, u32 reg_offset)
{
	struct ath_hw *ah = hw_priv;
	struct ath_common *common = FUNC0(ah);
	struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;

	FUNC3(&priv->wmi->multi_write_mutex);

	/* Store the register/value */
	priv->wmi->multi_write[priv->wmi->multi_write_idx].reg =
		FUNC2(reg_offset);
	priv->wmi->multi_write[priv->wmi->multi_write_idx].val =
		FUNC2(val);

	priv->wmi->multi_write_idx++;

	/* If the buffer is full, send it out. */
	if (priv->wmi->multi_write_idx == MAX_CMD_NUMBER)
		FUNC1(common);

	FUNC4(&priv->wmi->multi_write_mutex);
}