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
struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {scalar_t__ do_fw_download; struct hermes hw; } ;
struct TYPE_2__ {int (* init ) (struct hermes*) ;} ;

/* Variables and functions */
 int FUNC0 (struct orinoco_private*) ; 
 int FUNC1 (struct orinoco_private*) ; 
 int FUNC2 (struct hermes*) ; 

__attribute__((used)) static int FUNC3(struct orinoco_private *priv)
{
	struct hermes *hw = &priv->hw;
	int err;

	err = hw->ops->init(hw);
	if (priv->do_fw_download && !err) {
		err = FUNC0(priv);
		if (err)
			priv->do_fw_download = 0;
	}
	if (!err)
		err = FUNC1(priv);

	return err;
}