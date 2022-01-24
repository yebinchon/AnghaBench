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
struct camif_vp {int /*<<< orphan*/  state; int /*<<< orphan*/ * out_fmt; } ;
struct camif_dev {TYPE_1__* variant; } ;
struct TYPE_2__ {unsigned int ip_revision; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int S3C244X_CAMIF_IP_REV ; 
 int /*<<< orphan*/  ST_VP_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC1 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC2 (struct camif_vp*) ; 

__attribute__((used)) static int FUNC3(struct camif_dev *camif, struct camif_vp *vp)
{
	unsigned int ip_rev = camif->variant->ip_revision;

	if (vp->out_fmt == NULL)
		return -EINVAL;

	FUNC2(vp);
	if (ip_rev == S3C244X_CAMIF_IP_REV)
		FUNC1(vp);
	FUNC0(vp);
	vp->state &= ~ST_VP_CONFIG;
	return 0;
}