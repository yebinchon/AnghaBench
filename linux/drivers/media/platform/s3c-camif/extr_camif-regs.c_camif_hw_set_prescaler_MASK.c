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
typedef  int u32 ;
struct camif_scaler {int h_shift; int v_shift; int pre_h_ratio; int pre_v_ratio; int pre_dst_width; int pre_dst_height; } ;
struct camif_vp {int /*<<< orphan*/  offset; int /*<<< orphan*/  id; struct camif_scaler scaler; struct camif_dev* camif; } ;
struct camif_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct camif_dev*,int,int) ; 

__attribute__((used)) static void FUNC3(struct camif_vp *vp)
{
	struct camif_dev *camif = vp->camif;
	struct camif_scaler *sc = &vp->scaler;
	u32 cfg, shfactor, addr;

	addr = FUNC1(vp->id, vp->offset);

	shfactor = 10 - (sc->h_shift + sc->v_shift);
	cfg = shfactor << 28;

	cfg |= (sc->pre_h_ratio << 16) | sc->pre_v_ratio;
	FUNC2(camif, addr, cfg);

	cfg = (sc->pre_dst_width << 16) | sc->pre_dst_height;
	FUNC2(camif, FUNC0(vp->id, vp->offset), cfg);
}