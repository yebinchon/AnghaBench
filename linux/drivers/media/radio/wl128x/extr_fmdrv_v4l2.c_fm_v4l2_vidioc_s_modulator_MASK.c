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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct v4l2_modulator {scalar_t__ index; int txsubchans; } ;
struct fmdev {scalar_t__ curr_fmmode; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FM_MODE_TX ; 
 int /*<<< orphan*/  FM_MONO_MODE ; 
 int /*<<< orphan*/  FM_RDS_DISABLE ; 
 int /*<<< orphan*/  FM_RDS_ENABLE ; 
 int /*<<< orphan*/  FM_STEREO_MODE ; 
 int V4L2_TUNER_SUB_RDS ; 
 int V4L2_TUNER_SUB_STEREO ; 
 int FUNC0 (struct fmdev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fmdev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fmdev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct fmdev* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
		const struct v4l2_modulator *mod)
{
	struct fmdev *fmdev = FUNC4(file);
	u8 rds_mode;
	u16 aud_mode;
	int ret;

	if (mod->index != 0)
		return -EINVAL;

	if (fmdev->curr_fmmode != FM_MODE_TX) {
		ret = FUNC2(fmdev, FM_MODE_TX);
		if (ret != 0) {
			FUNC3("Failed to set TX mode\n");
			return ret;
		}
	}

	aud_mode = (mod->txsubchans & V4L2_TUNER_SUB_STEREO) ?
			FM_STEREO_MODE : FM_MONO_MODE;
	rds_mode = (mod->txsubchans & V4L2_TUNER_SUB_RDS) ?
			FM_RDS_ENABLE : FM_RDS_DISABLE;
	ret = FUNC1(fmdev, aud_mode);
	if (ret < 0) {
		FUNC3("Failed to set mono/stereo mode for TX\n");
		return ret;
	}
	ret = FUNC0(fmdev, rds_mode);
	if (ret < 0)
		FUNC3("Failed to set rds mode for TX\n");

	return ret;
}