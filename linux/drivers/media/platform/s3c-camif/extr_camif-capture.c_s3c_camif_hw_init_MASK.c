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
struct s3c_camif_variant {scalar_t__ ip_revision; scalar_t__ has_img_effect; } ;
struct camif_vp {int /*<<< orphan*/  state; int /*<<< orphan*/ * out_fmt; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sd; } ;
struct camif_dev {int /*<<< orphan*/  colorfx_cb; int /*<<< orphan*/  colorfx_cr; int /*<<< orphan*/  colorfx; int /*<<< orphan*/  test_pattern; TYPE_1__ sensor; struct s3c_camif_variant* variant; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ S3C244X_CAMIF_IP_REV ; 
 scalar_t__ S3C6410_CAMIF_IP_REV ; 
 int /*<<< orphan*/  ST_VP_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC1 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC2 (struct camif_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct camif_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct camif_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC6 (struct camif_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct camif_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct camif_dev *camif, struct camif_vp *vp)
{
	const struct s3c_camif_variant *variant = camif->variant;

	if (camif->sensor.sd == NULL || vp->out_fmt == NULL)
		return -EINVAL;

	if (variant->ip_revision == S3C244X_CAMIF_IP_REV)
		FUNC1(vp);
	FUNC2(camif);
	FUNC6(camif);
	FUNC3(camif);
	FUNC7(camif, camif->test_pattern);
	if (variant->has_img_effect)
		FUNC4(camif, camif->colorfx,
				camif->colorfx_cr, camif->colorfx_cb);
	if (variant->ip_revision == S3C6410_CAMIF_IP_REV)
		FUNC5(vp);
	FUNC0(vp);
	vp->state &= ~ST_VP_CONFIG;

	return 0;
}