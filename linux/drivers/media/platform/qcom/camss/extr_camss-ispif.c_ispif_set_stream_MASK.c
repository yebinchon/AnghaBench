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
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;
struct ispif_line {int interface; int csid_id; int vfe_id; TYPE_1__* fmt; int /*<<< orphan*/ * pads; struct ispif_device* ispif; } ;
struct ispif_device {int /*<<< orphan*/  config_lock; } ;
typedef  enum ispif_intf { ____Placeholder_ispif_intf } ispif_intf ;
struct TYPE_4__ {scalar_t__ version; } ;
struct TYPE_3__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 scalar_t__ CAMSS_8x96 ; 
 int /*<<< orphan*/  CMD_DISABLE_FRAME_BOUNDARY ; 
 int /*<<< orphan*/  CMD_ENABLE_FRAME_BOUNDARY ; 
 int ENOLINK ; 
 size_t MSM_ISPIF_PAD_SINK ; 
 int /*<<< orphan*/  FUNC0 (struct ispif_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ispif_device*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ispif_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ispif_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ispif_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ispif_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC6 (struct ispif_device*,int,int) ; 
 int FUNC7 (struct ispif_device*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC11 (struct ispif_device*) ; 
 struct ispif_line* FUNC12 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC13(struct v4l2_subdev *sd, int enable)
{
	struct ispif_line *line = FUNC12(sd);
	struct ispif_device *ispif = line->ispif;
	enum ispif_intf intf = line->interface;
	u8 csid = line->csid_id;
	u8 vfe = line->vfe_id;
	u8 vc = 0; /* Virtual Channel 0 */
	u8 cid = vc * 4; /* id of Virtual Channel and Data Type set */
	int ret;

	if (enable) {
		if (!FUNC8(&line->pads[MSM_ISPIF_PAD_SINK]))
			return -ENOLINK;

		/* Config */

		FUNC9(&ispif->config_lock);
		FUNC3(ispif, intf, csid, vfe, 1);

		ret = FUNC6(ispif, intf, vfe);
		if (ret < 0) {
			FUNC10(&ispif->config_lock);
			return ret;
		}

		FUNC4(ispif, intf, csid, vfe, 1);
		FUNC2(ispif, intf, cid, vfe, 1);
		FUNC0(ispif, intf, vfe, 1);
		if (FUNC11(ispif)->version == CAMSS_8x96)
			FUNC1(ispif,
					  line->fmt[MSM_ISPIF_PAD_SINK].code,
					  intf, cid, vfe, 1);
		FUNC5(ispif, CMD_ENABLE_FRAME_BOUNDARY,
				   intf, vfe, vc);
	} else {
		FUNC9(&ispif->config_lock);
		FUNC5(ispif, CMD_DISABLE_FRAME_BOUNDARY,
				   intf, vfe, vc);
		FUNC10(&ispif->config_lock);

		ret = FUNC7(ispif, intf, vfe);
		if (ret < 0)
			return ret;

		FUNC9(&ispif->config_lock);
		if (FUNC11(ispif)->version == CAMSS_8x96)
			FUNC1(ispif,
					  line->fmt[MSM_ISPIF_PAD_SINK].code,
					  intf, cid, vfe, 0);
		FUNC0(ispif, intf, vfe, 0);
		FUNC2(ispif, intf, cid, vfe, 0);
		FUNC4(ispif, intf, csid, vfe, 0);
		FUNC3(ispif, intf, csid, vfe, 0);
	}

	FUNC10(&ispif->config_lock);

	return 0;
}