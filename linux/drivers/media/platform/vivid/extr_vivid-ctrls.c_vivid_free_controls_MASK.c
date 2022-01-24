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
struct vivid_dev {int /*<<< orphan*/  ctrl_hdl_fb; int /*<<< orphan*/  ctrl_hdl_loop_cap; int /*<<< orphan*/  ctrl_hdl_sdtv_cap; int /*<<< orphan*/  ctrl_hdl_streaming; int /*<<< orphan*/  ctrl_hdl_user_aud; int /*<<< orphan*/  ctrl_hdl_user_vid; int /*<<< orphan*/  ctrl_hdl_user_gen; int /*<<< orphan*/  ctrl_hdl_sdr_cap; int /*<<< orphan*/  ctrl_hdl_radio_tx; int /*<<< orphan*/  ctrl_hdl_radio_rx; int /*<<< orphan*/  ctrl_hdl_vbi_out; int /*<<< orphan*/  ctrl_hdl_vbi_cap; int /*<<< orphan*/  ctrl_hdl_vid_out; int /*<<< orphan*/  ctrl_hdl_vid_cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct vivid_dev *dev)
{
	FUNC0(&dev->ctrl_hdl_vid_cap);
	FUNC0(&dev->ctrl_hdl_vid_out);
	FUNC0(&dev->ctrl_hdl_vbi_cap);
	FUNC0(&dev->ctrl_hdl_vbi_out);
	FUNC0(&dev->ctrl_hdl_radio_rx);
	FUNC0(&dev->ctrl_hdl_radio_tx);
	FUNC0(&dev->ctrl_hdl_sdr_cap);
	FUNC0(&dev->ctrl_hdl_user_gen);
	FUNC0(&dev->ctrl_hdl_user_vid);
	FUNC0(&dev->ctrl_hdl_user_aud);
	FUNC0(&dev->ctrl_hdl_streaming);
	FUNC0(&dev->ctrl_hdl_sdtv_cap);
	FUNC0(&dev->ctrl_hdl_loop_cap);
	FUNC0(&dev->ctrl_hdl_fb);
}