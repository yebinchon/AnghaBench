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
struct xsdfec_config {int /*<<< orphan*/  din_width; int /*<<< orphan*/  din_word_include; int /*<<< orphan*/  dout_width; int /*<<< orphan*/  dout_word_include; } ;
struct xsdfec_dev {struct xsdfec_config config; } ;

/* Variables and functions */
 int XSDFEC_AXIS_DIN_WIDTH_LSB ; 
 int XSDFEC_AXIS_DIN_WORDS_LSB ; 
 int XSDFEC_AXIS_DOUT_WIDTH_LSB ; 
 int XSDFEC_AXIS_DOUT_WORDS_LSB ; 
 int /*<<< orphan*/  XSDFEC_AXIS_WIDTH_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct xsdfec_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct xsdfec_dev *xsdfec)
{
	u32 reg_value;
	u32 dout_words_field;
	u32 dout_width_field;
	u32 din_words_field;
	u32 din_width_field;
	struct xsdfec_config *config = &xsdfec->config;

	/* translate config info to register values */
	dout_words_field =
		FUNC2(config->dout_word_include);
	dout_width_field =
		FUNC1(config->dout_width);
	din_words_field =
		FUNC2(config->din_word_include);
	din_width_field =
		FUNC1(config->din_width);

	reg_value = dout_words_field << XSDFEC_AXIS_DOUT_WORDS_LSB;
	reg_value |= dout_width_field << XSDFEC_AXIS_DOUT_WIDTH_LSB;
	reg_value |= din_words_field << XSDFEC_AXIS_DIN_WORDS_LSB;
	reg_value |= din_width_field << XSDFEC_AXIS_DIN_WIDTH_LSB;

	FUNC0(xsdfec, XSDFEC_AXIS_WIDTH_ADDR, reg_value);

	return 0;
}