#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct adv748x_state {int /*<<< orphan*/ * endpoints; } ;
struct TYPE_4__ {int /*<<< orphan*/  entity; int /*<<< orphan*/ * internal_ops; int /*<<< orphan*/  fwnode; } ;
struct adv748x_csi2 {size_t port; TYPE_1__ sd; int /*<<< orphan*/  ctrl_hdl; TYPE_2__* pads; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV748X_CSI2_NR_PADS ; 
 size_t ADV748X_CSI2_SINK ; 
 size_t ADV748X_CSI2_SOURCE ; 
 int /*<<< orphan*/  MEDIA_ENT_F_VID_IF_BRIDGE ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int FUNC0 (struct adv748x_csi2*) ; 
 int /*<<< orphan*/  adv748x_csi2_internal_ops ; 
 int /*<<< orphan*/  adv748x_csi2_ops ; 
 int /*<<< orphan*/  FUNC1 (struct adv748x_csi2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct adv748x_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct adv748x_csi2*) ; 
 scalar_t__ FUNC4 (struct adv748x_csi2*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct adv748x_state *state, struct adv748x_csi2 *tx)
{
	int ret;

	if (!FUNC3(tx))
		return 0;

	/* Initialise the virtual channel */
	FUNC1(tx, 0);

	FUNC2(&tx->sd, state, &adv748x_csi2_ops,
			    MEDIA_ENT_F_VID_IF_BRIDGE,
			    FUNC4(tx) ? "txa" : "txb");

	/* Ensure that matching is based upon the endpoint fwnodes */
	tx->sd.fwnode = FUNC7(state->endpoints[tx->port]);

	/* Register internal ops for incremental subdev registration */
	tx->sd.internal_ops = &adv748x_csi2_internal_ops;

	tx->pads[ADV748X_CSI2_SINK].flags = MEDIA_PAD_FL_SINK;
	tx->pads[ADV748X_CSI2_SOURCE].flags = MEDIA_PAD_FL_SOURCE;

	ret = FUNC6(&tx->sd.entity, ADV748X_CSI2_NR_PADS,
				     tx->pads);
	if (ret)
		return ret;

	ret = FUNC0(tx);
	if (ret)
		goto err_free_media;

	ret = FUNC8(&tx->sd);
	if (ret)
		goto err_free_ctrl;

	return 0;

err_free_ctrl:
	FUNC9(&tx->ctrl_hdl);
err_free_media:
	FUNC5(&tx->sd.entity);

	return ret;
}