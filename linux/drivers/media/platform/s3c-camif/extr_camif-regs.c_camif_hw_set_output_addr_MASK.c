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
struct camif_vp {scalar_t__ id; struct camif_dev* camif; } ;
struct camif_dev {TYPE_1__* variant; } ;
struct camif_addr {int /*<<< orphan*/  cr; int /*<<< orphan*/  cb; int /*<<< orphan*/  y; } ;
struct TYPE_2__ {scalar_t__ ip_revision; } ;

/* Variables and functions */
 scalar_t__ S3C6410_CAMIF_IP_REV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ VP_CODEC ; 
 int /*<<< orphan*/  FUNC3 (struct camif_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct camif_vp *vp,
			      struct camif_addr *paddr, int i)
{
	struct camif_dev *camif = vp->camif;

	FUNC3(camif, FUNC2(vp->id, i), paddr->y);
	if (camif->variant->ip_revision == S3C6410_CAMIF_IP_REV
		|| vp->id == VP_CODEC) {
		FUNC3(camif, FUNC0(vp->id, i),
								paddr->cb);
		FUNC3(camif, FUNC1(vp->id, i),
								paddr->cr);
	}

	FUNC4("dst_buf[%d]: %pad, cb: %pad, cr: %pad\n",
		 i, &paddr->y, &paddr->cb, &paddr->cr);
}