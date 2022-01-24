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
typedef  int u8 ;
struct dvb_frontend {int dummy; } ;

/* Variables and functions */
 int ADC_CTL_1 ; 
 int AGC_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int CLOCK_CTL ; 
 int CONFIG ; 
 int RESET ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct dvb_frontend*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe)
{
	int ret;
	u8 config[] = { CONFIG, 0x3d };
	u8 clock[] = { CLOCK_CTL, 0x30 };
	u8 reset[] = { RESET, 0x80 };
	u8 adc_ctl[] = { ADC_CTL_1, 0x40 };
	u8 agc[] = { AGC_TARGET, 0x1c, 0x20 };
	u8 sec_agc[] = { 0x69, 0x00, 0xff, 0xff, 0x40, 0xff, 0x00, 0x40, 0x40 };
	u8 unk1[] = { 0x93, 0x1a };
	u8 unk2[] = { 0xb5, 0x7a };

	FUNC1("Demod init!\n");

	if ((ret = FUNC2(fe, config, FUNC0(config))) != 0)
		return ret;
	if ((ret = FUNC2(fe, clock, FUNC0(clock))) != 0)
		return ret;
	if ((ret = FUNC2(fe, reset, FUNC0(reset))) != 0)
		return ret;
	if ((ret = FUNC2(fe, adc_ctl, FUNC0(adc_ctl))) != 0)
		return ret;
	if ((ret = FUNC2(fe, agc, FUNC0(agc))) != 0)
		return ret;
	if ((ret = FUNC2(fe, sec_agc, FUNC0(sec_agc))) != 0)
		return ret;
	if ((ret = FUNC2(fe, unk1, FUNC0(unk1))) != 0)
		return ret;
	if ((ret = FUNC2(fe, unk2, FUNC0(unk2))) != 0)
		return ret;

	return 0;
}