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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  code; scalar_t__ dout_width; scalar_t__ dout_word_include; scalar_t__ din_width; scalar_t__ din_word_include; } ;
struct xsdfec_dev {TYPE_1__ config; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
#define  XSDFEC_1x128b 130 
#define  XSDFEC_2x128b 129 
#define  XSDFEC_4x128b 128 
 scalar_t__ XSDFEC_AXIS_WORDS_INCLUDE_MAX ; 
 int /*<<< orphan*/  XSDFEC_FEC_CODE_ADDR ; 
 int /*<<< orphan*/  XSDFEC_LDPC_CODE ; 
 int /*<<< orphan*/  XSDFEC_TURBO_CODE ; 
 int FUNC0 (struct device_node*,char*,char const**) ; 
 int FUNC1 (struct device_node*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct xsdfec_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct xsdfec_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct xsdfec_dev *xsdfec)
{
	struct device *dev = xsdfec->dev;
	struct device_node *node = dev->of_node;
	int rval;
	const char *fec_code;
	u32 din_width;
	u32 din_word_include;
	u32 dout_width;
	u32 dout_word_include;

	rval = FUNC0(node, "xlnx,sdfec-code", &fec_code);
	if (rval < 0)
		return rval;

	if (!FUNC2(fec_code, "ldpc"))
		xsdfec->config.code = XSDFEC_LDPC_CODE;
	else if (!FUNC2(fec_code, "turbo"))
		xsdfec->config.code = XSDFEC_TURBO_CODE;
	else
		return -EINVAL;

	rval = FUNC1(node, "xlnx,sdfec-din-words",
				    &din_word_include);
	if (rval < 0)
		return rval;

	if (din_word_include < XSDFEC_AXIS_WORDS_INCLUDE_MAX)
		xsdfec->config.din_word_include = din_word_include;
	else
		return -EINVAL;

	rval = FUNC1(node, "xlnx,sdfec-din-width", &din_width);
	if (rval < 0)
		return rval;

	switch (din_width) {
	/* Fall through and set for valid values */
	case XSDFEC_1x128b:
	case XSDFEC_2x128b:
	case XSDFEC_4x128b:
		xsdfec->config.din_width = din_width;
		break;
	default:
		return -EINVAL;
	}

	rval = FUNC1(node, "xlnx,sdfec-dout-words",
				    &dout_word_include);
	if (rval < 0)
		return rval;

	if (dout_word_include < XSDFEC_AXIS_WORDS_INCLUDE_MAX)
		xsdfec->config.dout_word_include = dout_word_include;
	else
		return -EINVAL;

	rval = FUNC1(node, "xlnx,sdfec-dout-width", &dout_width);
	if (rval < 0)
		return rval;

	switch (dout_width) {
	/* Fall through and set for valid values */
	case XSDFEC_1x128b:
	case XSDFEC_2x128b:
	case XSDFEC_4x128b:
		xsdfec->config.dout_width = dout_width;
		break;
	default:
		return -EINVAL;
	}

	/* Write LDPC to CODE Register */
	FUNC4(xsdfec, XSDFEC_FEC_CODE_ADDR, xsdfec->config.code);

	FUNC3(xsdfec);

	return 0;
}