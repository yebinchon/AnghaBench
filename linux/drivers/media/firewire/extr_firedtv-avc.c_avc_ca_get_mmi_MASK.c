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
struct firedtv {int subunit; int avc_data_length; int /*<<< orphan*/  avc_mutex; scalar_t__ avc_data; } ;
struct avc_response_frame {int /*<<< orphan*/ * operand; } ;
struct avc_command_frame {int subunit; scalar_t__* operand; int /*<<< orphan*/  opcode; int /*<<< orphan*/  ctype; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVC_CTYPE_STATUS ; 
 int /*<<< orphan*/  AVC_OPCODE_VENDOR ; 
 int AVC_SUBUNIT_TYPE_TUNER ; 
 int /*<<< orphan*/  LAST_OPERAND ; 
 scalar_t__ SFE_VENDOR_DE_COMPANYID_0 ; 
 scalar_t__ SFE_VENDOR_DE_COMPANYID_1 ; 
 scalar_t__ SFE_VENDOR_DE_COMPANYID_2 ; 
 scalar_t__ SFE_VENDOR_OPCODE_CA2HOST ; 
 scalar_t__ SFE_VENDOR_TAG_CA_MMI ; 
 int FUNC0 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC1 (struct avc_command_frame*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct avc_response_frame*) ; 
 size_t FUNC3 (struct avc_response_frame*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct firedtv *fdtv, char *mmi_object, unsigned int *len)
{
	struct avc_command_frame *c = (void *)fdtv->avc_data;
	struct avc_response_frame *r = (void *)fdtv->avc_data;
	int ret;

	FUNC5(&fdtv->avc_mutex);

	c->ctype   = AVC_CTYPE_STATUS;
	c->subunit = AVC_SUBUNIT_TYPE_TUNER | fdtv->subunit;
	c->opcode  = AVC_OPCODE_VENDOR;

	c->operand[0] = SFE_VENDOR_DE_COMPANYID_0;
	c->operand[1] = SFE_VENDOR_DE_COMPANYID_1;
	c->operand[2] = SFE_VENDOR_DE_COMPANYID_2;
	c->operand[3] = SFE_VENDOR_OPCODE_CA2HOST;
	c->operand[4] = 0; /* slot */
	c->operand[5] = SFE_VENDOR_TAG_CA_MMI;
	FUNC1(c, 6, LAST_OPERAND);

	fdtv->avc_data_length = 12;
	ret = FUNC0(fdtv);
	if (ret < 0)
		goto out;

	/* FIXME: check response code and validate response data */

	*len = FUNC2(r);
	FUNC4(mmi_object, &r->operand[FUNC3(r)], *len);
out:
	FUNC6(&fdtv->avc_mutex);

	return ret;
}