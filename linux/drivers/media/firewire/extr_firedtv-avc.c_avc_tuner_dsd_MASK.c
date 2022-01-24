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
struct firedtv {int subunit; int type; int /*<<< orphan*/  avc_mutex; int /*<<< orphan*/  avc_data_length; scalar_t__ avc_data; } ;
struct dtv_frontend_properties {int dummy; } ;
struct avc_command_frame {int subunit; int /*<<< orphan*/  ctype; } ;
struct TYPE_2__ {int /*<<< orphan*/ * operand; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  AVC_CTYPE_CONTROL ; 
 int AVC_SUBUNIT_TYPE_TUNER ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  FIREDTV_DVB_C 131 
#define  FIREDTV_DVB_S 130 
#define  FIREDTV_DVB_S2 129 
#define  FIREDTV_DVB_T 128 
 int FUNC2 (struct firedtv*,struct dtv_frontend_properties*) ; 
 int FUNC3 (struct firedtv*,struct dtv_frontend_properties*) ; 
 int FUNC4 (struct firedtv*,struct dtv_frontend_properties*) ; 
 int FUNC5 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct avc_command_frame*,int) ; 
 TYPE_1__* r ; 
 int /*<<< orphan*/ * status ; 

int FUNC10(struct firedtv *fdtv,
		  struct dtv_frontend_properties *p)
{
	struct avc_command_frame *c = (void *)fdtv->avc_data;
	int pos, ret;

	FUNC7(&fdtv->avc_mutex);

	c->ctype   = AVC_CTYPE_CONTROL;
	c->subunit = AVC_SUBUNIT_TYPE_TUNER | fdtv->subunit;

	switch (fdtv->type) {
	case FIREDTV_DVB_S:
	case FIREDTV_DVB_S2: pos = FUNC4(fdtv, p); break;
	case FIREDTV_DVB_C: pos = FUNC2(fdtv, p); break;
	case FIREDTV_DVB_T: pos = FUNC3(fdtv, p); break;
	default:
		FUNC1();
	}
	FUNC9(c, pos);

	fdtv->avc_data_length = FUNC0(3 + pos, 4);
	ret = FUNC5(fdtv);
#if 0
	/*
	 * FIXME:
	 * u8 *status was an out-parameter of avc_tuner_dsd, unused by caller.
	 * Check for AVC_RESPONSE_ACCEPTED here instead?
	 */
	if (status)
		*status = r->operand[2];
#endif
	FUNC8(&fdtv->avc_mutex);

	if (ret == 0)
		FUNC6(500);

	return ret;
}