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
struct v4l2_subdev {int dummy; } ;
struct adv7842_sdp_io_sync_adjustment {int hs_beg; int hs_width; int de_beg; int de_end; int vs_beg_o; int vs_beg_e; int vs_end_o; int vs_end_e; int de_v_beg_o; int de_v_beg_e; int de_v_end_o; int de_v_end_e; scalar_t__ adjust; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int) ; 

__attribute__((used)) static void FUNC1(struct v4l2_subdev *sd, struct adv7842_sdp_io_sync_adjustment *s)
{
	if (s && s->adjust) {
		FUNC0(sd, 0x94, (s->hs_beg >> 8) & 0xf);
		FUNC0(sd, 0x95, s->hs_beg & 0xff);
		FUNC0(sd, 0x96, (s->hs_width >> 8) & 0xf);
		FUNC0(sd, 0x97, s->hs_width & 0xff);
		FUNC0(sd, 0x98, (s->de_beg >> 8) & 0xf);
		FUNC0(sd, 0x99, s->de_beg & 0xff);
		FUNC0(sd, 0x9a, (s->de_end >> 8) & 0xf);
		FUNC0(sd, 0x9b, s->de_end & 0xff);
		FUNC0(sd, 0xa8, s->vs_beg_o);
		FUNC0(sd, 0xa9, s->vs_beg_e);
		FUNC0(sd, 0xaa, s->vs_end_o);
		FUNC0(sd, 0xab, s->vs_end_e);
		FUNC0(sd, 0xac, s->de_v_beg_o);
		FUNC0(sd, 0xad, s->de_v_beg_e);
		FUNC0(sd, 0xae, s->de_v_end_o);
		FUNC0(sd, 0xaf, s->de_v_end_e);
	} else {
		/* set to default */
		FUNC0(sd, 0x94, 0x00);
		FUNC0(sd, 0x95, 0x00);
		FUNC0(sd, 0x96, 0x00);
		FUNC0(sd, 0x97, 0x20);
		FUNC0(sd, 0x98, 0x00);
		FUNC0(sd, 0x99, 0x00);
		FUNC0(sd, 0x9a, 0x00);
		FUNC0(sd, 0x9b, 0x00);
		FUNC0(sd, 0xa8, 0x04);
		FUNC0(sd, 0xa9, 0x04);
		FUNC0(sd, 0xaa, 0x04);
		FUNC0(sd, 0xab, 0x04);
		FUNC0(sd, 0xac, 0x04);
		FUNC0(sd, 0xad, 0x04);
		FUNC0(sd, 0xae, 0x04);
		FUNC0(sd, 0xaf, 0x04);
	}
}