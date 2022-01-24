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
struct avc_response_frame {int* operand; } ;
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
 scalar_t__ SFE_VENDOR_TAG_CA_DATE_TIME ; 
 int FUNC0 (struct firedtv*) ; 
 int /*<<< orphan*/  FUNC1 (struct avc_command_frame*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct avc_response_frame*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct firedtv *fdtv, int *interval)
{
	struct avc_command_frame *c = (void *)fdtv->avc_data;
	struct avc_response_frame *r = (void *)fdtv->avc_data;
	int ret;

	FUNC3(&fdtv->avc_mutex);

	c->ctype   = AVC_CTYPE_STATUS;
	c->subunit = AVC_SUBUNIT_TYPE_TUNER | fdtv->subunit;
	c->opcode  = AVC_OPCODE_VENDOR;

	c->operand[0] = SFE_VENDOR_DE_COMPANYID_0;
	c->operand[1] = SFE_VENDOR_DE_COMPANYID_1;
	c->operand[2] = SFE_VENDOR_DE_COMPANYID_2;
	c->operand[3] = SFE_VENDOR_OPCODE_CA2HOST;
	c->operand[4] = 0; /* slot */
	c->operand[5] = SFE_VENDOR_TAG_CA_DATE_TIME; /* ca tag */
	FUNC1(c, 6, LAST_OPERAND);

	fdtv->avc_data_length = 12;
	ret = FUNC0(fdtv);
	if (ret < 0)
		goto out;

	/* FIXME: check response code and validate response data */

	*interval = r->operand[FUNC2(r)];
out:
	FUNC4(&fdtv->avc_mutex);

	return ret;
}